# SQL-based-movie-management-system

This project is a pure SQL-based implementation of a movie theater ticket booking system. It includes schema definitions, relationships, and sample data for managing movies, shows, screens, customers, bookings, food menus, and food orders. The entire system is designed to be executed locally using SQLite and Visual Studio Code.



1.Manages movie listings, genres, and showtimes
2.Tracks seat availability per show and screen
3.Allows customer and booking management
4.Includes a food ordering system linked to bookings
5.Clean, relational database design with foreign keys
6.Easy to run and extend using SQLite in VS Code

 Contents

`movie_booking.db` – Ready-to-use SQLite database
 `movie_booking_schema_and_data.sql` – SQL script to create tables and insert data

 Technologies Used

* SQLite (file-based SQL engine)
* Visual Studio Code with SQLite extensions
* SQL syntax and relational schema modeling

 How to Run the Project in VS Code

1. Install SQLite extension:
   Search for `SQLite` or `SQLTools` in the Extensions tab.

2. Open or create the database:

   * Open `movie_booking.db` using the extension.
   * Or run `movie_booking_schema_and_data.sql` to create a new DB.

3. Run SQL queries:

   * Open the `.sql` file.
   * Select any query and run it with `Ctrl + Enter` or "Run Selected Query".



* Movies`: Holds movie details (title, genre, duration)
* Screens`: Theater screens and seat counts
* Shows`: Links movies to screens with showtimes
* Customers`: Registered users
* Bookings`: Tracks ticket purchases
* Food_Menu`: Lists available food items
* Food_Orders`: Records food ordered per booking


 Sample Data Included

* Movies like "Inception" and "RRR"
* Two screens and sample shows
* Test customers: Alice and Bob
* Popcorn, Coke, and Nachos in food menu

Future Enhancements

* Add ticket pricing and payment tables
* Generate reports for revenue and occupancy
* Integrate with a Flask or Django web frontend


