
-- Movies Table
CREATE TABLE Movies (
    movie_id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    genre TEXT,
    language TEXT,
    duration_mins INTEGER
);

-- Screens Table
CREATE TABLE Screens (
    screen_id INTEGER PRIMARY KEY AUTOINCREMENT,
    screen_name TEXT,
    total_seats INTEGER
);

-- Shows Table
CREATE TABLE Shows (
    show_id INTEGER PRIMARY KEY AUTOINCREMENT,
    movie_id INTEGER,
    screen_id INTEGER,
    show_time TEXT,
    available_seats INTEGER,
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
    FOREIGN KEY (screen_id) REFERENCES Screens(screen_id)
);

-- Customers Table
CREATE TABLE Customers (
    customer_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    email TEXT UNIQUE
);

-- Bookings Table
CREATE TABLE Bookings (
    booking_id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER,
    show_id INTEGER,
    seats_booked INTEGER,
    booking_time TEXT DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (show_id) REFERENCES Shows(show_id)
);

-- Food Menu Table
CREATE TABLE Food_Menu (
    item_id INTEGER PRIMARY KEY AUTOINCREMENT,
    item_name TEXT,
    price INTEGER
);

-- Food Orders Table
CREATE TABLE Food_Orders (
    order_id INTEGER PRIMARY KEY AUTOINCREMENT,
    booking_id INTEGER,
    item_id INTEGER,
    quantity INTEGER,
    FOREIGN KEY (booking_id) REFERENCES Bookings(booking_id),
    FOREIGN KEY (item_id) REFERENCES Food_Menu(item_id)
);

-- Insert Data into Movies
INSERT INTO Movies (title, genre, language, duration_mins) VALUES 
('Inception', 'Sci-Fi', 'English', 148),
('RRR', 'Action', 'Telugu', 180);

-- Insert Data into Screens
INSERT INTO Screens (screen_name, total_seats) VALUES 
('Screen 1', 100),
('Screen 2', 80);

-- Insert Data into Shows
INSERT INTO Shows (movie_id, screen_id, show_time, available_seats) VALUES 
(1, 1, '2025-07-01 18:00', 100),
(2, 2, '2025-07-01 21:00', 80);

-- Insert Data into Customers
INSERT INTO Customers (name, email) VALUES 
('Alice', 'alice@example.com'),
('Bob', 'bob@example.com');

-- Insert Data into Food Menu
INSERT INTO Food_Menu (item_name, price) VALUES 
('Popcorn', 100),
('Coke', 50),
('Nachos', 120);
