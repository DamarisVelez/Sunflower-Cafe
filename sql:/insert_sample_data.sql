INSERT INTO Categories (cat_name)
VALUES 
       ('Coffee'),
	   ('Teas'),
       ('Pastries'),
       ('Lunch Items'),
       ('Juices & Smoothies');
       
INSERT INTO Customers (cust_fname, cust_lname)
VALUES 
    ('Peter', 'Lorenz'), 
    ('Anna', 'Johnson'),
    ('Sofia', 'Martinez'),
    ('Juan', 'Mendez'),
    ('Steven', 'Smith'),
    ('Emma', 'Smith'),
    ('Liam', 'Johnson'),
    ('Olivia', 'Williams'),
    ('Noah', 'Brown'),
    ('Ava', 'Jones'),
    ('Elijah', 'Garcia'),
    ('Sophia', 'Martinez'),
    ('Lucas', 'Rodriguez'),
    ('Isabella', 'Wilson'),
    ('Mason', 'Anderson'),
    ('Mia', 'Taylor'),
    ('Ethan', 'Thomas'),
    ('Charlotte', 'Hernandez'),
    ('James', 'Moore'),
    ('Amelia', 'Martin'),
    ('Alexander', 'Lee');

INSERT INTO Address (cust_id, delivery_address1, delivery_city, delivery_zip)
VALUES 
     (1, '245 Magnolia Rd', 'South Pasadena', '91030'),
     (2, '3921 Barrett Rd', 'Los Angeles', '90032'),
     (3, '17 E Street NE', 'Glendale', '98120'),
     (4, '788 Broadway Ave', 'North Hollywood', '91602'),
    (5, '1234 Empire State Blvd', 'Pasadena', '91101'),
    (6, '123 Elm Street', 'San Diego', '92101'),
    (7, '456 Maple Avenue', 'Los Angeles', '90001'),
    (8, '789 Oak Drive', 'San Francisco', '94102'),
    (9, '101 Pine Road', 'Sacramento', '95814'),
    (10, '202 Cedar Lane', 'Fresno', '93701'),
    (11, '303 Birch Boulevard', 'San Jose', '95112'),
    (12, '404 Willow Way', 'Long Beach', '90802'),
    (13, '505 Spruce Court', 'Bakersfield', '93301'),
    (14, '606 Cherry Circle', 'Anaheim', '92801'),
    (15, '707 Ash Street', 'Santa Ana', '92701'),
    (16, '808 Palm Drive', 'Riverside', '92501'),
    (17, '909 Walnut Avenue', 'Chula Vista', '91910'),
    (18, '1010 Fir Avenue', 'Stockton', '95201'),
    (19, '1111 Maple Street', 'Irvine', '92602'),
    (20, '1212 Oak Street', 'Modesto', '95350'),
    (21, '1313 Pine Avenue', 'Ontario', '91761');


INSERT INTO Items (item_name, item_price, cat_id)
VALUES 
       ('Black Coffee', 3.50, 1),
	   ('Latte', 5.50, 1),
       ('Cappuccino', 5.00, 1),
       ('Mocha', 5.25, 1),
       
       ('Matcha', 6.00, 2),
       ('Earl Grey', 3.50, 2),
       ('Hibiscus', 4.00, 2),
       ('Green Tea', 3.50, 2),
       
       ('Croissant', 3.50, 3),
       ('Strawberry Scone', 4.25, 3),
       ('Lemon Poppy Seed Muffin', 4.00, 3),
       ('Chocolate Eclair', 4.50, 3),
       
       ('BLT', 12.50, 4),
       ('Breakfast Sandwich', 14.25, 4),
       ('Steak & Eggs Burrito', 15.50, 4),
       ('Mediterranean Bowl', 15.00, 4),
       ('Chicken Caesar Wrap', 14.00, 4),
       
       ('Orange Juice', 4.50, 5),
       ('Lemonade', 3.75, 5),
       ('Almond Butter Chocolate Protein Smoothie', 10.50, 5),
       ('Strawberry Banana Smoothie', 8.75, 5);
       
INSERT INTO Orders (order_date, item_id, item_price, quantity, cust_id, delivery, add_id)
VALUES
    ('2024-08-28 10:15:00', 1, 3.50, 2, 1, TRUE, 1),
    ('2024-08-28 10:15:00', 13, 12.50, 1, 1, TRUE, 1);
     
INSERT INTO Orders (order_date, item_id, item_price, quantity, cust_id, delivery, add_id)
VALUES   
    ('2024-08-28 11:30:00', 3, 5.00, 3, 2, TRUE, 2),
    ('2024-08-28 11:30:00', 9, 3.50, 3, 2, TRUE, 2);
     
INSERT INTO Orders (order_date, item_id, item_price, quantity, cust_id, delivery, add_id)
VALUES      
    ('2024-08-28 12:45:00', 5, 6.00, 1, 3, FALSE, NULL),
    ('2024-08-28 12:45:00', 14, 14.25, 2, 3, FALSE, NULL);

INSERT INTO Orders (order_date, item_id, item_price, quantity, cust_id, delivery, add_id)
VALUES   
    ('2024-08-28 13:55:00', 7, 4.00, 2, 4, TRUE, 4),
    ('2024-08-28 13:55:00', 16, 15.00, 2, 4, TRUE, 4);

INSERT INTO Orders (order_date, item_id, item_price, quantity, cust_id, delivery, add_id)
VALUES   
    ('2024-08-28 14:20:00', 6, 3.50, 2, 5, TRUE, 5),
    ('2024-08-28 14:20:00', 11, 4.00, 4, 5, TRUE, 5);

INSERT INTO Orders (order_date, item_id, item_price, quantity, cust_id, delivery, add_id)
VALUES   
    ('2024-08-28 15:10:00', 2, 5.50, 4, 6, FALSE, NULL),
    ('2024-08-28 15:10:00', 15, 15.50, 4, 6, FALSE, NULL);
    
INSERT INTO Orders (order_date, item_id, item_price, quantity, cust_id, delivery, add_id)
VALUES   
    ('2024-08-28 16:05:00', 21, 8.75, 2, 7, TRUE, 7),
    ('2024-08-28 16:05:00', 16, 4.50, 2, 7, TRUE, 7);

INSERT INTO Orders (order_date, item_id, item_price, quantity, cust_id, delivery, add_id)
VALUES   
    ('2024-08-28 17:30:00', 19, 3.75, 3, 8, TRUE, 8),
    ('2024-08-28 17:30:00', 13, 12.50, 3, 8, TRUE, 8);

INSERT INTO Orders (order_date, item_id, item_price, quantity, cust_id, delivery, add_id)
VALUES   
    ('2024-08-28 18:00:00', 4, 5.25, 3, 9, FALSE, NULL),
    ('2024-08-28 18:00:00', 9, 3.50, 3, 9, FALSE, NULL);

INSERT INTO Orders (order_date, item_id, item_price, quantity, cust_id, delivery, add_id)
VALUES   
    ('2024-08-28 19:15:00', 20, 10.50, 2, 10, TRUE, 10),
    ('2024-08-28 19:15:00', 10, 4.25, 2, 10, TRUE, 10);
    
INSERT INTO Orders (order_date, item_id, item_price, quantity, cust_id, delivery, add_id)
VALUES   
    ('2024-08-28 10:30:00', 8, 3.50, 4, 11, TRUE, 11),
    (11, '2024-08-28 10:30:00', 12, 4.50, 4, 11, TRUE, 11);
    
INSERT INTO Orders (order_date, item_id, item_price, quantity, cust_id, delivery, add_id)
VALUES   
    ('2024-08-28 11:45:00', 18, 4.50, 2, 12, FALSE, NULL),
    ('2024-08-28 11:45:00', 17, 14.00, 2, 12, FALSE, NULL);

INSERT INTO Orders (order_date, item_id, item_price, quantity, cust_id, delivery, add_id)
VALUES   
    ('2024-08-28 13:00:00', 21, 8.75, 1, 13, TRUE, 13),
    ('2024-08-28 13:00:00', 14, 14.25, 1, 13, TRUE, 13);

INSERT INTO Orders (order_date, item_id, item_price, quantity, cust_id, delivery, add_id)
VALUES   
    ('2024-08-28 14:10:00', 2, 5.50, 2, 14, TRUE, 14),
    ('2024-08-28 14:10:00', 15, 15.50, 2, 14, TRUE, 14);
    
INSERT INTO Orders (order_date, item_id, item_price, quantity, cust_id, delivery, add_id)
VALUES   
    ('2024-08-28 15:20:00', 3, 5.00, 1, 15, FALSE, NULL),
    ('2024-08-28 15:20:00', 12, 4.50, 1, 15, FALSE, NULL);

       
INSERT INTO Employees (emp_fname, emp_lname, emp_position, hourly_rate)
VALUES ('Martin', 'Luna', 'Barista', 18.00),
	   ('Peter', 'Lopez', 'Waiter/Barista', 18.00),
	   ('Amelia', 'Rivera', 'Barista', 18.00),
       ('Jennifer', 'Lawrence', 'Waiter/Barista', 18.00), 
	   ('Sophie', 'Stevens', 'Cook', 22.00),
       ('Phillip', 'Jean', 'Cook', 22.00),
       ('Jackson', 'Lee', 'Cleaning', 25.00),
       ('Lucas', 'Hernandez', 'Cleaning', 25.00);


INSERT INTO Shifts (emp_id, shift_type, shift_start, shift_end)
VALUES
    (7, 'Tuesday cleaning', '07:00', '09:30'),
    (1, 'Tuesday morning', '10:00', '16:00'),
    (2, 'Tuesday morning', '10:00', '16:00'),
    (3, 'Tuesday afternoon', '15:00', '21:00'),
    (4, 'Tuesday afternoon', '15:00', '21:00'),
    (8, 'Wednesday cleaning', '07:00', '09:30'),
    (1, 'Wednesday morning', '10:00', '16:00'),
    (2, 'Wednesday morning', '10:00', '16:00'),
    (3, 'Wednesday afternoon', '15:00', '09:00'),
    (4, 'Wednesday afternoon', '15:00', '09:00'),
    (7, 'Thursday cleaning', '07:00', '09:30'),
    (1, 'Thursday morning', '10:00', '16:00'),
    (2, 'Thursday morning', '10:00', '16:00'),
    (3, 'Thursday afternoon', '15:00', '21:00'),
    (4, 'Thursday afternoon', '15:00', '21:00'),
    (8, 'Friday cleaning', '07:00', '09:30'),
    (1, 'Friday morning', '10:00', '16:00'),
    (2, 'Friday morning', '10:00', '16:00'),
    (3, 'Friday afternoon', '15:00', '21:00'),
    (4, 'Friday afternoon', '15:00', '21:00'),
    (7, 'Saturday cleaning', '07:00', '09:30'),
    (1, 'Saturday morning', '10:00', '16:00'),
    (2, 'Saturday morning', '10:00', '16:00'),
    (3, 'Saturday afternoon', '15:00', '21:00'),
    (4, 'Saturday afternoon', '15:00', '21:00');

       
INSERT INTO Rota (emp_id, shift_id)
VALUES
    (7, 1),
    (1, 2),
    (2, 3),
    (3, 4),
    (4, 5),
    (8, 6),
    (1, 7),
    (2, 8),
    (3, 9),
    (4, 10),
    (7, 11),
    (1, 12),
    (2, 13),
    (3, 14),
    (4, 15),
    (8, 16),
    (1, 17),
    (2, 18),
    (3, 19),
    (4, 20),
    (7, 21),
    (1, 22),
    (2, 23),
    (3, 24),
    (4, 25);

      
