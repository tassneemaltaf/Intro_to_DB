USE alx_book_store

CREATE TABLE Books (
  book_id INT PRIMARY KEY,
  title VARCHAR(130),
  author_id FOREIGN KEY REFERENCES Authors(author_id),
  price DOUBLE,
  publication_date DATE
);

CREATE TABLE Authors (
  author_id PRIMARY KEY
  author_name VARCHAR(215)
);

CREATE TABLE Customers (
  customer_id PRIMARY KEY,
  customer_name VARCHAR(215),
  email VARCHAR(215),
  address TEXT
);

CREATE TABLE Orders (
  order_id INT PRIMARY KEY
  customer_id INT, FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
  order_date DATE
);

CREATE TABLE Order_Details (
  order_detail_id PRIMARY KEY,
  order_id FOREIGN KEY (order_id) REFERENCES Orders(order_id),
  book_id FOREIGN KEY (book_id) REFERENCES Books(book_id),
  quantity DOUBLE
)