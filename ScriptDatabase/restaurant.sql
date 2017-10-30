CREATE DATABASE restaurant;
USE restaurant;

-- Bảng danh mục thức ăn
CREATE TABLE category(
	categoryID INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    categoryName VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    flags BOOLEAN
);

-- Bảng danh sách thức ăn
CREATE TABLE food(
	foodID INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    foodName VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    categoryID INT UNSIGNED NOT NULL,
    flags BOOLEAN
);

-- Danh sách các chi nhánh
CREATE TABLE department(
	departmentID INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    departmentName VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    address VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    phoneNumber VARCHAR(20) NOT NULL,
    numberOfTable SMALLINT UNSIGNED NOT NULL,
    flags BOOLEAN
);

-- Menu của chi nhánh
CREATE TABLE menu_department(
	departmentID INT UNSIGNED,
    foodID INT UNSIGNED,
    price INT UNSIGNED NOT NULL,
    flags BOOLEAN,
    PRIMARY KEY (departmentID, foodID)
);

-- Bàn ở mỗi chi nhánh
CREATE TABLE restaurant_table(
	tableID INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    tableNumber INT UNSIGNED NOT NULL,
    tableStatus ENUM ('empty', 'ordered') NOT NULL,	-- Trạng thái của bàn
    departmentID INT UNSIGNED NOT NULL,
    flags BOOLEAN
);

-- Danh sách nhân viên của một chi nhánh
CREATE TABLE staff(
	staffID INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    staffName VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    address VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    phoneNumber VARCHAR(20) NOT NULL,
    staffType VARCHAR(50) NOT NULL,
    salary INT UNSIGNED NOT NULL,
    departmentID INT UNSIGNED NOT NULL,
    flags BOOLEAN
);

-- Danh sách khách hàng
CREATE TABLE customer(
	custumerID INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    customerName VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    address VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    phoneNumber VARCHAR(20) NOT NULL,
    customerType VARCHAR(50) NOT NULL,
    flags BOOLEAN
);

-- Đơn đặt hàng
CREATE TABLE order_food(
	orderID INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    departmentID INT UNSIGNED NOT NULL,
    customerID INT UNSIGNED NOT NULL,
    orderType ENUM ('onsite', 'take_away'),	-- đặt tại chỗ hoặc mang về
    status VARCHAR(60),	-- Trạng thái đơn hàng
    dateCreated DATETIME NOT NULL,
    dateDelivery DATETIME,
    addressDelivery VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    flags BOOLEAN
);

-- Chi tiết đơn hàng
CREATE TABLE order_detail(
	orderID INT UNSIGNED,
    foodID INT UNSIGNED,
    quantity SMALLINT UNSIGNED NOT NULL,
    status VARCHAR(60),
    flags BOOLEAN,
    PRIMARY KEY(orderID, foodID)
);

-- Hóa đơn thanh toán
CREATE TABLE payment(
	paymentID INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    orderID INT UNSIGNED NOT NULL,
    totalPrice INT UNSIGNED NOT NULL,
    status VARCHAR(60),
    dateOfCreated DATETIME NOT NULL, 
    flags BOOLEAN
);

-- Chi phí theo ngày
CREATE TABLE date_cost(
	departmentID INT UNSIGNED AUTO_INCREMENT,
    dateOfCost DATE,
    typeOfCost VARCHAR(60),
    price BIGINT UNSIGNED NOT NULL,
    note VARCHAR(300),
    flags BOOLEAN,
    PRIMARY KEY(departmentID, dateOfCost)
);

-- Chi phí theo tháng
CREATE TABLE month_cost(
	departmentID INT UNSIGNED AUTO_INCREMENT,
    monthOfCost VARCHAR(10),
    typeOfCost VARCHAR(60),
    price BIGINT UNSIGNED NOT NULL,
    note VARCHAR(300),
    flags BOOLEAN,
    PRIMARY KEY(departmentID, monthOfCost)
);

-- Thu nhập theo ngày
CREATE TABLE date_revenue(
	departmentID INT UNSIGNED AUTO_INCREMENT,
    dateOfRevenue DATETIME,
    typeOfRevenue VARCHAR(60),
    price BIGINT UNSIGNED NOT NULL,
    note VARCHAR(300),
    flags BOOLEAN,
    PRIMARY KEY(departmentID, dateOfRevenue)
);

