CREATE TABLE books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(255),
    year_published INT,
    isAvailable BOOLEAN,
    price NUMERIC(10, 2),
    publication VARCHAR(255)
);
INSERT INTO books (title, author, year_published, isAvailable, price, publication)
VALUES
('The Great Book', 'John Doe', 2001, TRUE, 450.00, 'XYZ'),
('1984', 'George Orwell', 1949, TRUE, 350.00, 'ABC'),
('To Kill a Mockingbird', 'Harper Lee', 1960, TRUE, 300.00, 'XYZ'),
('The Silent Patient', 'Alex Michaelides', 2019, FALSE, 599.00, 'Penguin'),
('The Midnight Library', 'Matt Haig', 2020, TRUE, 699.00, 'Canongate'),
('Atomic Habits', 'James Clear', 2018, TRUE, 550.00, 'XYZ'),
('Sapiens', 'Yuval Noah Harari', 2011, TRUE, 720.00, 'Harper'),
('Educated', 'Tara Westover', 2018, FALSE, 640.00, 'Random House'),
('Becoming', 'Michelle Obama', 2018, TRUE, 800.00, 'Crown'),
('The Alchemist', 'Paulo Coelho', 1988, TRUE, 400.00, 'XYZ'),
('The Book Thief', 'Markus Zusak', 2005, TRUE, 480.00, 'Picador'),
('The Subtle Art of Not Giving a F*ck', 'Mark Manson', 2016, TRUE, 580.00, 'HarperOne'),
('Rich Dad Poor Dad', 'Robert Kiyosaki', 1997, TRUE, 300.00, 'Warner Books'),
('The Psychology of Money', 'Morgan Housel', 2020, TRUE, 520.00, 'XYZ'),
('Thinking, Fast and Slow', 'Daniel Kahneman', 2011, TRUE, 750.00, 'FSG');

--1. Select all books published after 2000
SELECT * FROM books
WHERE year_published > 2000;

--2. Select books with price less than 599.00, ordered by price descending
SELECT * FROM books
WHERE price < 599.00
ORDER BY price DESC;

--3. Select the top 3 most expensive books
SELECT * FROM books
ORDER BY price DESC
LIMIT 3;

--4. Select 2 books skipping first 2, ordered by year_published descending
SELECT * FROM books
ORDER BY year_published DESC
OFFSET 2
LIMIT 2;

SELECT * FROM books
WHERE publication = 'XYZ'
ORDER BY title ASC;






















