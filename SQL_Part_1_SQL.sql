/*
SELECT TOP 1000 *
FROM dbo.books;
--top 1000 books from DooksDB

SELECT COUNT(*) as titles
FROM dbo.books;
--count all rows to find 10000 'titles'

SELECT *
FROM dbo.books
where original_publication_year < '1800';
--finds all books published before the year 1800

select distinct authors
from dbo.books
--pulls all distinct authors

select COUNT(*)
FROM dbo.books
WHERE language_code = 'eng' or language_code = 'eng-'
--counts all books with the language code 'eng' or 'eng-'

select original_title
from dbo.books
where original_publication_year BETWEEN '1914' and '1921';
--titles created between the years 1914 and 1921

select top 1000 *
FROM dbo.book_tags
ORDER BY tag_id;
--top 1000 table items ordered by tag_id

SELECT SUM(goodreads_book_id)
from dbo.book_tags
GROUP BY tag_id;
--count number of goodread_book_id and put into new column

SELECT sum(goodreads_book_id) as 'Book_Count'
from dbo.book_tags
GROUP BY tag_id;
--Count of goodread_book_id and put into new, named column 'book_count'

SELECT book_id
FROM dbo.ratings
ORDER BY rating DESC
-- book ratings in descending order

select USER_ID
FROM dbo.ratings
WHERE rating < '2';
--users who gave a rating less than 2

SELECT count(book_id)
from dbo.ratings
where rating > '4';
--sum of books with a rating higher than 4

SELECT *
FROM dbo.tags
where tag_name like '%mystery%';
--select all books tagged with 'mystery'

-- SELECT *
   -- FROM BooksDB.dbo.tags
   -- WHERE tag_name < 'd' AND tag_name >= 'c';
   -- finds every book with tag names that begin at C and ends just before D

select user_id, COUNT(book_id) as total_books_to_read
from dbo.to_read
GROUP BY [user_id]
order BY total_books_to_read ASC;
-- count books to read by userId ascending

SELECT USER_ID, COUNT(book_id) as 'total_books_to_read'
from dbo.to_read
GROUP BY user_id
ORDER BY total_books_to_read DESC;
-- count books to read by userId descending
/*