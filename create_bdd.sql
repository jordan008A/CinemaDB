CREATE DATABASE IF NOT EXISTS CinemaDB;
USE CinemaDB;

CREATE TABLE IF NOT EXISTS Cinemas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS Rooms (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    capacity INT NOT NULL,
    cinema_id INT NOT NULL,
    FOREIGN KEY (cinema_id) REFERENCES Cinemas(id)
);

CREATE TABLE IF NOT EXISTS Movies (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    duration INT NOT NULL
);

CREATE TABLE IF NOT EXISTS Shows (
    id INT AUTO_INCREMENT PRIMARY KEY,
    movie_id INT NOT NULL,
    room_id INT NOT NULL,
    schedules DATETIME NOT NULL,
    availablePlaces INT NOT NULL,
    FOREIGN KEY (movie_id) REFERENCES Movies(id),
    FOREIGN KEY (room_id) REFERENCES Rooms(id)
);

CREATE TABLE IF NOT EXISTS Prices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    description VARCHAR(255) NOT NULL,
    price DECIMAL(5,2) NOT NULL
);

CREATE TABLE IF NOT EXISTS Bookings (
    id INT AUTO_INCREMENT PRIMARY KEY,
    reservedPlaces INT NOT NULL,
    show_id INT NOT NULL,
    price_id INT NOT NULL,
    FOREIGN KEY (show_id) REFERENCES Shows(id),
    FOREIGN KEY (price_id) REFERENCES Prices(id)
);

CREATE TABLE IF NOT EXISTS Users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    cinema_id INT NOT NULL,
    is_admin BOOLEAN default 0,
    FOREIGN KEY (cinema_id) REFERENCES Cinemas(id)
);
