\sql
\connect root@localhost:3306
use whatabook

#10.3
CREATE DATABASE whatabook;
SHOW DATABASES;
GRANT ALL PRIVILEGES ON whatabook.* TO ‘whatabook_user’@’localhost’;

# tables

# 3rd

CREATE TABLE user(
user_id INT NOT NULL AUTO_INCREMENT,
first_name VARCHAR(75) NOT NULL,
last_name VARCHAR(75) NOT NULL,
primary key(user_id));

# 4th

CREATE TABLE wishlist(
whishlist_id INT NOT NULL AUTO_INCREMENT,
user_id INT NOT NULL,
book_id INT NOT NULL,
primary key(wishlist_id),
CONSTRAINT fk_book
FOREIGN KEY(book_id)
REFERENCES book(book_id),
CONSTRAINT fk_user
FOREIGN KEY(user_id)
REFERENCES user(user_id));

# 2nd

CREATE TABLE book(
book_id INT NOT NULL AUTO_INCREMENT,
book_name VARCHAR(200) NOT NULL,
author VARCHAR(200) NOT NULL,
details VARCHAR(500) NOT NULL,
primary key(book_id));

# 1st

CREATE TABLE store(
store_id INT NOT NULL AUTO_INCREMENT,
locale VARCHAR(500) NOT NULL,
primary key(store_id));


#example worked 

show tables;

CREATE TABLE Player(
player_id VARCHAR(50) NOT NULL,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(60) NOT NULL,
primary key(player_id));





INSERT INTO store(locale)
    VALUES('1000 Galvin Rd S, Bellevue, NE 68005');

/*
    insert book records 
*/
INSERT INTO book(book_name, author, details)
    VALUES('The Return of the King', 'J.R.Tolkien', 'The third part of The Lord of the Rings');

INSERT INTO book(book_name, author, details)
    VALUES('The Fellowship of the Ring', 'J.R.Tolkien', 'The first part of The Lord of the Rings');

INSERT INTO book(book_name, author, details)
    VALUES('The Two Towers', 'J.R.Tolkien', "The second part of The Lord of The Rings");

INSERT INTO book(book_name, author)
    VALUES('The Hobbit or There and Back Again', 'J.R.Tolkien');

INSERT INTO book(book_name, author)
    VALUES('Dune: Deluxe Edition', 'Frank Herbert');

INSERT INTO book(book_name, author)
    VALUES("Charlotee's Web", 'E.B. White');

INSERT INTO book(book_name, author)
    VALUES('The Great Gatsby', 'F. Scott Fitzgerald');

INSERT INTO book(book_name, author)
    VALUES('The Lion, the Witch, and the Wardrobe', 'C.S. Lewis');

INSERT INTO book(book_name, author)
    VALUES('The Catcher and the Rye', 'J.D. Salinger');

/*
    insert user
*/ 
INSERT INTO user(first_name, last_name) 
    VALUES('Thorin', 'Oakenshield');

INSERT INTO user(first_name, last_name)
    VALUES('Bilbo', 'Baggins');

INSERT INTO user(first_name, last_name)
    VALUES('Frodo', 'Baggins');

/*
    insert wishlist records 
*/
INSERT INTO wishlist(user_id, book_id) 
    VALUES (
        (SELECT user_id FROM user WHERE first_name = 'Thorin'), 
        (SELECT book_id FROM book WHERE book_name = 'The Hobbit or There and Back Again')
    );

INSERT INTO wishlist(user_id, book_id)
    VALUES (
        (SELECT user_id FROM user WHERE first_name = 'Bilbo'),
        (SELECT book_id FROM book WHERE book_name = 'The Fellowship of the Ring')
    );

INSERT INTO wishlist(user_id, book_id)
    VALUES (
        (SELECT user_id FROM user WHERE first_name = 'Frodo'),
        (SELECT book_id FROM book WHERE book_name = 'The Return of the King')
    );
