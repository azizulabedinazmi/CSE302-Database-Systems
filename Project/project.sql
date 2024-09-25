DROP TABLE Financial_Transactions;
DROP TABLE Flight_Status;
DROP TABLE Payments;
DROP TABLE Flight_Crew;
DROP TABLE Crew;
DROP TABLE Bookings;
DROP TABLE Passengers;
DROP TABLE Flights;
DROP TABLE Airports;
DROP TABLE Airlines;
DROP TABLE users;
DROP SEQUENCE financial_transaction_seq;
DROP SEQUENCE flight_status_seq;
DROP SEQUENCE payment_seq;
DROP SEQUENCE flight_crew_seq;
DROP SEQUENCE crew_seq;
DROP SEQUENCE booking_seq;
DROP SEQUENCE passenger_seq;
DROP SEQUENCE flight_seq;
DROP SEQUENCE airport_seq;
DROP SEQUENCE airline_seq;
DROP SEQUENCE users_seq;



CREATE TABLE Airlines (
    airline_id INT PRIMARY KEY,
    airline_name VARCHAR(100) NOT NULL,
    airline_code VARCHAR(10) NOT NULL
);



CREATE OR REPLACE TRIGGER airline_id_trigger
BEFORE INSERT ON Airlines
FOR EACH ROW
BEGIN
    SELECT airline_seq.NEXTVAL INTO :NEW.airline_id FROM dual;
END;
/

INSERT INTO Airlines VALUES (1, 'American Airlines', 'AA');
INSERT INTO Airlines VALUES (2, 'Delta Airlines', 'DL');
INSERT INTO Airlines VALUES (3, 'United Airlines', 'UA');
INSERT INTO Airlines VALUES (4, 'Southwest Airlines', 'WN');
INSERT INTO Airlines VALUES (5, 'JetBlue Airways', 'B6');
INSERT INTO Airlines VALUES (6, 'Alaska Airlines', 'AS');
INSERT INTO Airlines VALUES (7, 'Spirit Airlines', 'NK');
INSERT INTO Airlines VALUES (8, 'Frontier Airlines', 'F9');
INSERT INTO Airlines VALUES (9, 'Hawaiian Airlines', 'HA');
INSERT INTO Airlines VALUES (10, 'Allegiant Air', 'G4');


CREATE TABLE Airports (
    airport_id INT PRIMARY KEY,
    airport_name VARCHAR(100) NOT NULL,
    airport_code VARCHAR(10) NOT NULL,
    city VARCHAR(50),
    country VARCHAR(50)
);
INSERT INTO Airports VALUES (1, 'John F. Kennedy International Airport', 'JFK', 'New York', 'USA');
INSERT INTO Airports VALUES (2, 'Los Angeles International Airport', 'LAX', 'Los Angeles', 'USA');
INSERT INTO Airports VALUES (3, 'London Heathrow Airport', 'LHR', 'London', 'UK');
INSERT INTO Airports VALUES (4, 'Tokyo Haneda Airport', 'HND', 'Tokyo', 'Japan');
INSERT INTO Airports VALUES (5, 'Dubai International Airport', 'DXB', 'Dubai', 'UAE');
INSERT INTO Airports VALUES (6, 'Paris Charles de Gaulle Airport', 'CDG', 'Paris', 'France');
INSERT INTO Airports VALUES (7, 'Frankfurt Airport', 'FRA', 'Frankfurt', 'Germany');
INSERT INTO Airports VALUES (8, 'Singapore Changi Airport', 'SIN', 'Singapore', 'Singapore');
INSERT INTO Airports VALUES (9, 'Sydney Kingsford Smith Airport', 'SYD', 'Sydney', 'Australia');
INSERT INTO Airports VALUES (10, 'Toronto Pearson International Airport', 'YYZ', 'Toronto', 'Canada');


CREATE OR REPLACE TRIGGER airport_id_trigger
BEFORE INSERT ON Airports
FOR EACH ROW
BEGIN
    SELECT airport_seq.NEXTVAL INTO :NEW.airport_id FROM dual;
END;
/



CREATE TABLE Flights (
    flight_id INT PRIMARY KEY,
    airline_id INT,
    departure_airport_id INT,
    arrival_airport_id INT,
    flight_number VARCHAR(10),
    departure_time TIMESTAMP,
    arrival_time TIMESTAMP,
    FOREIGN KEY (airline_id) REFERENCES Airlines(airline_id),
    FOREIGN KEY (departure_airport_id) REFERENCES Airports(airport_id),
    FOREIGN KEY (arrival_airport_id) REFERENCES Airports(airport_id)
);


CREATE OR REPLACE TRIGGER flight_id_trigger
BEFORE INSERT ON Flights
FOR EACH ROW
BEGIN
    SELECT flight_seq.NEXTVAL INTO :NEW.flight_id FROM dual;
END;
/


CREATE TABLE Passengers (
    passenger_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    passport_number VARCHAR(20),
    nationality VARCHAR(50)
);
INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality)
VALUES (1, 'John', 'Doe', 'P1234567', 'USA');
INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality)
VALUES (2, 'Jane', 'Smith', 'P2345678', 'UK');
INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality)
VALUES (3, 'Alice', 'Johnson', 'P3456789', 'Canada');
INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality)
VALUES (4, 'Bob', 'Brown', 'P4567890', 'Australia');
INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality)
VALUES (5, 'Charlie', 'Davis', 'P5678901', 'New Zealand');
INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality)
VALUES (6, 'Diana', 'Evans', 'P6789012', 'South Africa');
INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality)
VALUES (7, 'Ethan', 'Foster', 'P7890123', 'Ireland');
INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality)
VALUES (8, 'Fiona', 'Garcia', 'P8901234', 'Spain');
INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality)
VALUES (9, 'George', 'Harris', 'P9012345', 'Germany');
INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality)
VALUES (10, 'Hannah', 'Ibrahim', 'P0123456', 'UAE');


CREATE OR REPLACE TRIGGER passenger_id_trigger
BEFORE INSERT ON Passengers
FOR EACH ROW
BEGIN
    SELECT passenger_seq.NEXTVAL INTO :NEW.passenger_id FROM dual;
END;
/



CREATE TABLE Bookings (
    booking_id INT PRIMARY KEY,
    flight_id INT,
    passenger_id INT,
    booking_date TIMESTAMP,
    seat_class VARCHAR(20),
    price DECIMAL(10, 2),
    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id),
    FOREIGN KEY (passenger_id) REFERENCES Passengers(passenger_id)
);
CREATE OR REPLACE TRIGGER booking_id_trigger
BEFORE INSERT ON Bookings
FOR EACH ROW
BEGIN
    SELECT booking_seq.NEXTVAL INTO :NEW.booking_id FROM dual;
END;
/



CREATE TABLE Crew (
    crew_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    role VARCHAR(50)
);
INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (1, 'Tom', 'Johnson', 'Pilot');
INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (2, 'Sarah', 'Lee', 'Flight Attendant');
INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (3, 'Michael', 'Smith', 'Co-Pilot');
INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (4, 'Emily', 'Davis', 'Flight Attendant');
INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (5, 'James', 'Brown', 'Pilot');
INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (6, 'Jessica', 'Wilson', 'Flight Attendant');
INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (7, 'David', 'Taylor', 'Co-Pilot');
INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (8, 'Laura', 'Anderson', 'Flight Attendant');
INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (9, 'Robert', 'Thomas', 'Pilot');
INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (10, 'Anna', 'Moore', 'Flight Attendant');


CREATE OR REPLACE TRIGGER crew_id_trigger
BEFORE INSERT ON Crew
FOR EACH ROW
BEGIN
    :NEW.crew_id := crew_seq.NEXTVAL;
END;
/



CREATE TABLE Flight_Crew (
    flight_id INT,
    crew_id INT,
    first_name VARCHAR(50),
    role VARCHAR(50),
    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id) ON DELETE CASCADE,
    FOREIGN KEY (crew_id) REFERENCES Crew(crew_id) ON DELETE CASCADE,
    PRIMARY KEY (flight_id, crew_id)
);

CREATE OR REPLACE TRIGGER flight_crew_bi_trigger
BEFORE INSERT ON Flight_Crew
FOR EACH ROW
BEGIN
    SELECT first_name, role INTO :NEW.first_name, :NEW.role FROM Crew WHERE crew_id = :NEW.crew_id;
END;
/



CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    booking_id INT,
    payment_date TIMESTAMP,
    amount DECIMAL(10, 2),
    payment_method VARCHAR(20),
    FOREIGN KEY (booking_id) REFERENCES Bookings(booking_id)
);

CREATE OR REPLACE TRIGGER payment_id_trigger
BEFORE INSERT ON Payments
FOR EACH ROW
BEGIN
    SELECT payment_seq.NEXTVAL INTO :NEW.payment_id FROM dual;
END;
/



CREATE TABLE Flight_Status (
    status_id INT PRIMARY KEY,
    flight_id INT,
    status VARCHAR(20),
    updated_time TIMESTAMP,
    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id)
);
CREATE OR REPLACE TRIGGER flight_status_id_trigger
BEFORE INSERT ON Flight_Status
FOR EACH ROW
BEGIN
    SELECT flight_status_seq.NEXTVAL INTO :NEW.status_id FROM dual;
END;
/



CREATE TABLE Financial_Transactions (
    transaction_id INT PRIMARY KEY,
    transaction_type VARCHAR(50),
    amount DECIMAL(10, 2),
    transaction_date TIMESTAMP
);
INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (1, 'Ticket Sale', 500.00, TO_TIMESTAMP('2024-08-01 12:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (2, 'Ticket Sale', 1500.00, TO_TIMESTAMP('2024-08-05 14:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (3, 'Ticket Sale', 2500.00, TO_TIMESTAMP('2024-08-10 16:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (4, 'Ticket Sale', 600.00, TO_TIMESTAMP('2024-08-15 18:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (5, 'Ticket Sale', 1600.00, TO_TIMESTAMP('2024-08-20 20:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (6, 'Ticket Sale', 2600.00, TO_TIMESTAMP('2024-08-25 22:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (7, 'Ticket Sale', 700.00, TO_TIMESTAMP('2024-08-30 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (8, 'Ticket Sale', 1700.00, TO_TIMESTAMP('2024-09-01 12:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (9, 'Ticket Sale', 2700.00, TO_TIMESTAMP('2024-09-05 14:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (10, 'Ticket Sale', 800.00, TO_TIMESTAMP('2024-09-10 16:00:00', 'YYYY-MM-DD HH24:MI:SS'));


CREATE OR REPLACE TRIGGER financial_transaction_id_trigger
BEFORE INSERT ON Financial_Transactions
FOR EACH ROW
BEGIN
    SELECT financial_transaction_seq.NEXTVAL INTO :NEW.transaction_id FROM dual;
END;
/




CREATE SEQUENCE users_seq START WITH 1 INCREMENT BY 1;

CREATE TABLE users(
    user_id INT NOT NULL,
    user_name VARCHAR2(64) NOT NULL,
    user_pass VARCHAR2(32) NOT NULL,
    user_roll VARCHAR2(30) NOT NULL,
    user_activated number default 0,
    PRIMARY KEY(user_id)
);
INSERT INTO users VALUES(1,'azmi','azmi007@@##','admin','1');

CREATE OR REPLACE TRIGGER users_id_trigger
BEFORE INSERT ON users
FOR EACH ROW
BEGIN
    SELECT users_seq.NEXTVAL INTO :NEW.user_id FROM dual;
END;
/



/*
----Authentication Scheme
FUNCTION my_auth (
p_username IN VARCHAR2,
p_password IN VARCHAR2)
RETURN BOOLEAN AS
found number := 0;
BEGIN
SELECT 1 into found FROM users
WHERE upper(user_name) = upper(p_username)
AND upper(user_pass) = upper(p_password)
AND user_activated = 1;
RETURN TRUE;
EXCEPTION
WHEN NO_DATA_FOUND THEN
RETURN FALSE;
END;
*/

/*
----Authorization Schemes
SELECT user_roll
FROM users
WHERE upper(user_name) = upper(V('APP_USER'))
AND user_roll IN ('admin');
*/

/*
SELECT user_roll
FROM users
WHERE upper(user_name) = upper(V('APP_USER'))
AND user_roll IN ('admin','viewer_admin');
*/





----Query
--Query 1: Retrieve all bookings along with passenger names

Create View passenger_name_and_bookings as (
SELECT
    b.booking_id,
    b.booking_date,
    (SELECT p.first_name || ' ' || p.last_name FROM Passengers p WHERE p.passenger_id = b.passenger_id) AS passenger_name
FROM
    Bookings b);


--Query 2: EXISTS - Retrieve all airlines that have flights

Create View Airline_With_Flights as (
SELECT
    a.airline_name
FROM
    Airlines a
WHERE
    EXISTS (SELECT 1 FROM Flights f WHERE f.airline_id = a.airline_id));

--Query 3: Find all airports that have flights departing from them:

Create View ALL_Airport_Flights_Departd as (
SELECT airport_id, airport_name
FROM Airports
WHERE airport_id IN (
    SELECT departure_airport_id
    FROM Flights
));

--Query 4: NOT EXISTS - Find all flights that do not have any bookings:

Create View Flights_WithNo_Bookings as (
SELECT flight_id, flight_number
FROM Flights
WHERE NOT EXISTS (
    SELECT 1
    FROM Bookings
    WHERE flight_id = Flights.flight_id
));

--Query 5: List all passengers who have booked a flight with a price greater than $1000:

Create View Passenger_WithPrice_1000 as (
SELECT p.passenger_id, p.first_name, p.last_name
FROM Passengers p
WHERE p.passenger_id IN (
    SELECT b.passenger_id
    FROM Bookings b
    WHERE b.price > 1000
));

--Query 6: Not EXISTS - List all crew members who are not assigned to any flight:

Create View Crew_WithNO_Flght as (
SELECT crew_id, first_name, last_name, role
FROM Crew
WHERE NOT EXISTS (
    SELECT 1
    FROM Flight_Crew fc
    WHERE fc.crew_id = Crew.crew_id
));



COMMIT;


