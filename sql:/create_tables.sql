CREATE TABLE Categories (
    cat_id INT PRIMARY KEY AUTO_INCREMENT,
    cat_name VARCHAR(50) NOT NULL
);


CREATE TABLE Customers (
    cust_id INT PRIMARY KEY AUTO_INCREMENT,
    cust_fname VARCHAR(50) NOT NULL,
    cust_lname VARCHAR(50) NOT NULL
);

CREATE TABLE Address (
    add_id INT PRIMARY KEY AUTO_INCREMENT,
    cust_id INT NOT NULL,
    delivery_address1 VARCHAR(200) NOT NULL,
    delivery_address2 VARCHAR(200),
    delivery_city VARCHAR(50) NOT NULL,
    delivery_zip VARCHAR(10) NOT NULL,
    FOREIGN KEY (cust_id) REFERENCES Customers(cust_id)
);


CREATE TABLE Items (
    item_id INT PRIMARY KEY AUTO_INCREMENT,
    item_name VARCHAR(100) UNIQUE,
    item_price DECIMAL(10,2) NOT NULL,
    cat_id INT NOT NULL,
    FOREIGN KEY (cat_id) REFERENCES Categories(cat_id)
  );
    

CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT,
    order_date DATETIME NOT NULL,
    item_id INT NOT NULL,
    item_price DECIMAL(10, 2) NOT NULL DEFAULT 0.00,
    quantity INT NOT NULL,
    cust_id INT NOT NULL,
    delivery BOOLEAN NOT NULL,
    add_id INT,
    total DECIMAL(10, 2) GENERATED ALWAYS AS (
		(quantity * item_price * 1.0725) + CASE WHEN delivery THEN 4 ELSE 0 END) 
	) STORED,
    PRIMARY KEY (order_id, item_id),
    FOREIGN KEY (item_id) REFERENCES Items(item_id),
    FOREIGN KEY (cust_id) REFERENCES Customers(cust_id),
    FOREIGN KEY (add_id) REFERENCES Address(add_id)
);

    
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_fname VARCHAR(50) NOT NULL,
    emp_lname VARCHAR(50) NOT NULL,
    emp_position VARCHAR(200) NOT NULL,
    hourly_rate DECIMAL(5,2) NOT NULL
 );
    

CREATE TABLE Shifts (
    shift_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_id INT NOT NULL,
    shift_date DATETIME,
    shift_start TIME NOT NULL,
    shift_end TIME NOT NULL,
    shift_type VARCHAR(100),
    FOREIGN KEY (emp_id) REFERENCES Employees(emp_id)
 );


CREATE TABLE Rota (
    rota_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_id INT NOT NULL,
    shift_id INT NOT NULL,
    FOREIGN KEY (emp_id) REFERENCES Employees(emp_id),
    FOREIGN KEY (shift_id) REFERENCES Shifts(shift_id)
);
    
    
	