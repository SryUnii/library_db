-- Membuat database
CREATE DATABASE library_db;

-- Menggunakan database
USE library_db;

-- Membuat tabel authors
CREATE TABLE authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Membuat tabel publishers
CREATE TABLE publishers (
    publisher_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Membuat tabel books dengan foreign key ke tabel authors dan publishers
CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    author_id INT,
    publisher_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id),
    FOREIGN KEY (publisher_id) REFERENCES publishers(publisher_id)
);
ECHO is on.
