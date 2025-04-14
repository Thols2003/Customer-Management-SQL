CREATE TABLE SalesReps (
    rep_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20),
    joined_on DATE
);

CREATE TABLE Deals (
    deal_id INT PRIMARY KEY,
    customer_id INT,
    rep_id INT,
    amount DECIMAL(10, 2),
    stage VARCHAR(50), -- e.g., 'New', 'Qualified', 'Proposal', 'Won', 'Lost'
    created_on DATE,
    closed_on DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (rep_id) REFERENCES SalesReps(rep_id)
);
