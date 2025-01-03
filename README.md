
Sunflower Cafe Database Project

Overview

This project is a relational database design for a fictional coffee shop, Sunflower Cafe. 
The database simulates the core business processes of a cafe,
including customer orders, menu items, employee shifts, and more.

The main components of this database system are:

Customers: Stores information about cafe customers.
Orders: Tracks customer orders.
Items: Contains the items available on the cafe's menu.
Employees: Information about cafe staff.
Shifts: The working hours for employees.
Rota: The employee shift schedule.
Tables and Relationships

This database contains the following tables:

Customers: Stores customer details like first and last name.
Orders: Records details of customer orders (items, quantities, prices, etc.).
Items: Contains details of the cafe menu items (name, price, category).
Employees: Details of cafe employees (name, position, hourly rate).
Shifts: Details of employee shifts (start and end times).
Rota: Assigns employees to shifts on specific days.

Setup Instructions

To set up the Sunflower Cafe database:

1. Create the Database
First, create a new database in your SQL environment:
CREATE DATABASE sunflower_cafe;

2. Run the Schema Script
Execute the create_tables.sql script to set up the database schema (tables, relationships, etc.):
mysql -u root -p < create_tables.sql

3. Insert Sample Data
Run the insert_sample_data.sql script to populate the database with sample data for customers, orders, items, etc.:
mysql -u root -p < insert_sample_data.sql

4. Verify Setup
You can verify everything is set up by running a simple query to view the customers:

SELECT * FROM Customers;
Example Queries

Here are some example queries you can use to interact with the database:

Total Sales for the Day
SELECT SUM(item_price * quantity) AS total_sales
FROM Orders
WHERE order_date = '2024-08-28';

Orders by Customer
SELECT order_id, item_name, quantity, order_date
FROM Orders
JOIN Items ON Orders.item_id = Items.item_id
WHERE cust_id = 1;

List All Employees
SELECT emp_fname, emp_lname, emp_position
FROM Employees;
Optional Features for Future Development

API Development (Optional)
To make the database interactable via a web interface, you could create a simple REST API. This API could allow users to:

Place orders.
View available menu items.
Get customer order history.
Frontend Interface (Optional)
A simple web frontend could be developed to allow customers to:

View the menu.
Place orders. The frontend could interact with an API (or directly with the database) to display real-time data.
Tools and Technologies

SQL: Used for the relational database schema and queries.
MySQL/PostgreSQL: The relational database management systems (RDBMS) used to store the data.
ERD Tools: Tools like draw.io or dbdiagram.io can be used to create the Entity Relationship Diagram (ERD).
Future Enhancements

Add user authentication for employees to log in and manage orders.
Implement discounts and promotions for specific menu items.
Add order status tracking (e.g., pending, preparing, delivered).
Customer Feedback: Allow customers to rate items and leave reviews.
Advanced Reporting: Implement reports for tracking sales, popular items, employee performance, etc.
License

This project is licensed under the MIT License.

Contributing

Feel free to fork this repository, open issues, or submit pull requests. Please make sure to follow best practices and maintain the integrity of the database schema when contributing.

Contact

If you have any questions, feel free to reach out via GitHub issues or at damaris_velez2006@hotmail.com
