# movie-ticket-booking-db-design
This repository contains the database design and SQL scripts for a movie ticket booking system. It includes table structures, sample data, and SQL queries for managing theatres, movies, shows, and bookings. All SQL queries are designed to be executed on a MySQL database.

## Entities and Attributes:

### Theatres
- `theatre_id`: INT, Primary Key
- `name`: VARCHAR, Name of the theatre
- `location`: VARCHAR, Address or location of the theatre

### Movies
- `movie_id`: INT, Primary Key
- `title`: VARCHAR, Title of the movie
- `language`: VARCHAR, Language of the movie
- `rating`: CHAR(2), Rating (like 'A', 'UA', etc.)
- `format`: VARCHAR, Format of the movie (2D, 3D, etc.)

### Shows
- `show_id`: INT, Primary Key
- `theatre_id`: INT, Foreign Key referencing Theatre(theatre_id)
- `movie_id`: INT, Foreign Key referencing Movie(movie_id)
- `date`: DATE, Date of the show
- `time`: TIME, Time of the show
- `availability`: BOOLEAN, Whether tickets are available or not

### Bookings
- `booking_id`: INT, Primary Key
- `show_id`: INT, Foreign Key referencing Show(show_id)
- `customer_id`: INT, Foreign Key referencing Customer(customer_id)
- `number_of_tickets`: INT, Number of tickets booked

### Customers
- `customer_id`: INT, Primary Key
- `name`: VARCHAR, Name of the customer
- `email`: VARCHAR, Email of the customer
- `phone_number`: VARCHAR, Contact number of the customer

