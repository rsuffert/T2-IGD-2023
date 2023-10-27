DROP KEYSPACE IF EXISTS bookings_passengers;
CREATE KEYSPACE IF NOT EXISTS bookings_passengers
WITH replication = {
    'class': 'SimpleStrategy'.
    'replication_factor': 1
};
USE bookings_passengers;