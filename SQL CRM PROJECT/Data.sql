INSERT INTO SalesReps VALUES
(1, 'Alice Smith', 'alice@company.com'),
(2, 'John Doe', 'john@company.com');

INSERT INTO Customers VALUES
(101, 'Acme Corp', 'contact@acme.com', '1234567890', '2024-01-01'),
(102, 'Globex Inc', 'info@globex.com', '0987654321', '2024-01-10');

INSERT INTO Deals VALUES
(201, 101, 1, 15000.00, 'Won', '2024-01-15', '2024-01-30'),
(202, 102, 2, 8000.00, 'Proposal', '2024-02-01', NULL),
(203, 101, 1, 5000.00, 'Lost', '2024-02-10', '2024-02-20');
