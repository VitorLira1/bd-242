USE BD_ATV8

CREATE TABLE TB_PRODUCTLINES (
    productLineId INT PRIMARY KEY AUTO_INCREMENT,
    textDesc VARCHAR(100) NOT NULL,
    htmlDesc VARCHAR(100),
    image VARCHAR(100)
);

CREATE TABLE TB_PRODUCTS (
    productId INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    productLine_id INT NOT NULL,
    scale VARCHAR(100),
    vendor VARCHAR(100),
    descrip VARCHAR(100),
    quantityStock INT,
    buyPrice FLOAT,
    MSROP VARCHAR(100),

    FOREIGN KEY (productLine_id) REFERENCES TB_PRODUCTLINES(productLineId) ON DELETE CASCADE
);

CREATE TABLE TB_OFFICES(
    officeId INT PRIMARY KEY AUTO_INCREMENT,
    city VARCHAR(100),
    phone VARCHAR(100),
    addressLine1 VARCHAR(100) NOT NULL,
    addressLine2 VARCHAR(100),
    state VARCHAR(100),
    country VARCHAR(100),
    postalCode VARCHAR(100),
    territory VARCHAR(100)
);

CREATE TABLE TB_EMPLOYEES(
    employeeId INT PRIMARY KEY AUTO_INCREMENT,
    lastName VARCHAR(100),
    firstName VARCHAR(100) NOT NULL,
    extension VARCHAR(100),
    email VARCHAR(100),
    office_id INT NOT NULL,
    reportsTo VARCHAR(100),
    jobTitle VARCHAR(100),

    FOREIGN KEY(office_id) REFERENCES TB_OFFICES(officeId) ON DELETE CASCADE
);

CREATE TABLE TB_CUSTOMERS(
    customerId INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    lastName VARCHAR(100),
    firstName VARCHAR(100),
    phone VARCHAR(100),
    addressLine1 VARCHAR(100),
    addressLine2 VARCHAR(100),
    city VARCHAR(100),
    state VARCHAR(100),
    postalCode VARCHAR(100),
    country VARCHAR(100),
    employee_id INT NOT NULL,
    creditLimit FLOAT,

    FOREIGN KEY(employee_id) REFERENCES TB_EMPLOYEES(employeeId)
);

CREATE TABLE TB_ORDERS(
    orderId INT PRIMARY KEY AUTO_INCREMENT,
    orderDate DATE,
    requiredDate DATE,
    shippedDate DATE,
    status VARCHAR(100),
    comments VARCHAR(100),
    customer_id INT NOT NULL,

    FOREIGN KEY(customer_id) REFERENCES TB_CUSTOMERS(customerId) ON DELETE CASCADE
);

CREATE TABLE TB_ORDERDETAILS(
    order_id INT PRIMARY KEY NOT NULL,
    product_id INT NOT NULL,
    quantity INT,
    priceEach FLOAT,
    orderLineNumber INT,

    FOREIGN KEY(order_id) REFERENCES TB_ORDERS(orderId) ON DELETE CASCADE,

    FOREIGN KEY(product_id) REFERENCES TB_PRODUCTS(productId) ON DELETE CASCADE
);

CREATE TABLE TB_PAYMENTS(
    customer_id INT PRIMARY KEY NOT NULL,
    checkNumber INT NOT NULL,
    paymentDate DATE,
    amount INT,

    FOREIGN KEY(customer_id) REFERENCES TB_CUSTOMERS(customerId)
);