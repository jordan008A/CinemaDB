USE CinemaDB;

INSERT INTO Cinemas (name, address) VALUES
('Cinéma A', '123 rue de Paris, Paris'),
('Cinéma B', '123 rue de Lyon, Lyon'),
('Cinéma C', '123 rue de Nice, Nice');

INSERT INTO Rooms (name, capacity, cinema_id) VALUES
('Salle A', 120, 1),
('Salle B', 200, 1),
('Salle C', 150, 1),
('Salle 1', 200, 2),
('Salle 2', 140, 2),
('Salle Jaune', 180, 3);

INSERT INTO Movies (title, duration) VALUES
('Les Aventuriers du Rail', 120),
('Avatar', 160),
('Interstellar', 150),
('Les bronzés font du ski', 90),
('Rivages Perdus', 110);

INSERT INTO Shows (movie_id, room_id, schedules, availablePlaces) VALUES
(1, 1, '2024-02-25 14:00:00', 120),
(2, 2, '2024-02-25 16:00:00', 200),
(3, 3, '2024-02-26 18:00:00', 150),
(1, 4, '2024-02-27 20:00:00', 200),
(4, 5, '2024-02-28 20:30:00', 140),
(5, 6, '2024-02-28 19:30:00', 180);

INSERT INTO Prices (description, price) VALUES
('Plein tarif', 9.20),
('Etudiant', 7.60),
('Moins de 14 ans', 5.90);

INSERT INTO Bookings (reservedPlaces, show_id, price_id) VALUES
(2, 1, 1),
(1, 1, 2),
(3, 2, 3),
(4, 3, 1),
(1, 4, 2),
(6, 5, 2),
(12, 6, 3);

INSERT INTO Users (name, password, cinema_id, is_admin) VALUES
('Admin Cinéma A', 'password123', 1, 1),
('User Cinéma A', 'password123', 1, 0),
('Admin Cinéma B', 'password456', 2, 1),
('User Cinéma B', 'password456', 2, 0),
('Admin Cinéma C', 'password789', 3, 1),
('User Cinéma C', 'password789', 3, 0);
