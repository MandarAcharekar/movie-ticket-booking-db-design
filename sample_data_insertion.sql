-- Theatres
INSERT INTO Theatres (name, location) VALUES ('PVR: Growel, Kandivali (E)', 'Growel 101 Mall, Akurli Road, Mumbai, Maharashtra 400101');

-- Movies
INSERT INTO Movies (title, language, rating, format) VALUES
('Tumbbad', 'Hindi', 'A', '2D'),
('Devara - Part 1', 'Hindi', 'UA', '2D'),
('Dharmaveer: Mukkam Post Thane 2', 'Marathi', 'UA', '2D'),
('Stree 2: Sarkate Ka Aatank', 'Hindi', 'UA', '2D'),
('Navra Maza Navsacha 2', 'Marathi', 'U', '2D');

-- Shows
INSERT INTO Shows (theatre_id, movie_id, date, time, availability) VALUES
(1, 1, '2024-09-28', '12:05:00', TRUE),
(1, 1, '2024-09-28', '05:55:00', TRUE),
(1, 1, '2024-09-28', '11:45:00', TRUE),
(1, 2, '2024-09-28', '12:15:00', TRUE),
(1, 2, '2024-09-28', '03:50:00', TRUE);

-- Customers
INSERT INTO Customers (name, email, phone_number) VALUES
('John Doe', 'john@example.com', '1234567890'),
('Jane Smith', 'jane@example.com', '0987654321');

-- Bookings
INSERT INTO Bookings (show_id, customer_id, number_of_tickets) VALUES
(1, 1, 2),
(2, 2, 4);