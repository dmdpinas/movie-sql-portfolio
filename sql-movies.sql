CREATE TABLE movies (
    movie_id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    genre VARCHAR(50) NOT NULL,
    release_year INT NOT NULL,
    director VARCHAR(100)
);
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    signup_date DATE
);
CREATE TABLE ratings (
    rating_id INT PRIMARY KEY,
    user_id INT NOT NULL,
    movie_id INT NOT NULL,
    score INT NOT NULL,
    rating_date DATE NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);
INSERT INTO movies VALUES
(1, 'Inception', 'Sci-Fi', 2010, 'Christopher Nolan'),
(2, 'The Godfather', 'Crime', 1972, 'Francis Ford Coppola'),
(3, 'The Matrix', 'Sci-Fi', 1999, 'The Wachowskis'),
(4, 'Titanic', 'Romance', 1997, 'James Cameron'),
(5, 'Interstellar', 'Sci-Fi', 2014, 'Christopher Nolan'),
(6, 'The Dark Knight', 'Action', 2008, 'Christopher Nolan'),
(7, 'Forrest Gump', 'Drama', 1994, 'Robert Zemeckis'),
(8, 'The Shawshank Redemption', 'Drama', 1994, 'Frank Darabont'),
(9, 'Avengers: Endgame', 'Action', 2019, 'Anthony & Joe Russo'),
(10, 'The Social Network', 'Drama', 2010, 'David Fincher');
INSERT INTO users VALUES
(1, 'john_doe', 'john@example.com', '2021-01-15'),
(2, 'sarah99', 'sarah@example.com', '2020-06-30'),
(3, 'alex77', 'alex@example.com', '2022-03-21'),
(4, 'maria_s', 'maria@example.com', '2021-12-01'),
(5, 'ethan_k', 'ethan@example.com', '2022-07-14'),
(6, 'luna_dev', 'luna@example.com', '2020-11-11'),
(7, 'tommy88', 'tommy@example.com', '2019-08-19'),
(8, 'jessie_q', 'jessie@example.com', '2021-09-09');
INSERT INTO ratings VALUES
(1,1,1,5,'2022-01-05'),
(2,1,3,4,'2022-01-07'),
(3,2,1,4,'2022-02-10'),
(4,2,4,5,'2022-02-15'),
(5,3,5,5,'2022-03-01'),
(6,3,6,4,'2022-03-05'),
(7,4,2,5,'2022-04-12'),
(8,4,7,4,'2022-04-18'),
(9,5,8,5,'2022-05-20'),
(10,5,1,4,'2022-05-22'),
(11,6,9,5,'2022-06-11'),
(12,6,2,4,'2022-06-14'),
(13,7,1,5,'2022-07-03'),
(14,7,10,4,'2022-07-05'),
(15,8,3,5,'2022-08-01'),
(16,8,5,4,'2022-08-03'),
(17,3,4,3,'2022-03-10'),
(18,2,9,5,'2022-02-25'),
(19,6,6,4,'2022-06-20'),
(20,1,8,5,'2022-01-15');
CREATE VIEW movie_ratings AS
SELECT
    ratings.rating_id,
    users.user_id,
    users.username,
    users.email,
    users.signup_date,
    movies.movie_id,
    movies.title,
    movies.genre,
    movies.release_year,
    movies.director,
    ratings.score,
    ratings.rating_date
FROM ratings
JOIN users ON ratings.user_id = users.user_id
JOIN movies ON ratings.movie_id = movies.movie_id;

