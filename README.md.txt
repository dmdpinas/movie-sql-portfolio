- Movie SQL Portfolio

Welcome to my ‘professional’ Mode-style SQL project showcasing movie ratings.

— Tables

- **movies**: Contains movie details (`movie_id`, `title`, `genre`, `release_year`, `director`)  
- **users**: Contains user details (`user_id`, `username`, `email`, `signup_date`)  
- **ratings**: Contains user ratings (`rating_id`, `user_id`, `movie_id`, `score`, `rating_date`)  

— View

- **movie_ratings**: Combines `movies`, `users`, and `ratings` into one view for easy querying.

-- Sample Queries

1. Top 5 movies by average score  
2. Average score by genre  
3. Movies with no ratings  
4. Users with the most ratings  
5. Average score for movies released after 2005  
6. Number of ratings per movie  
7. Highest score each user gave  
8. Movies with average score above 4.5  
9. Average score per genre per movie  
10. Users who rated Sci-Fi movies

--  How to Use

1. Run `movies.sql` in MySQL or OneCompiler.  
2. Query the `movie_ratings` view for analytics.  
3. Modify or extend queries as desired.

Output:

+--------------------------+-----------+
| title                    | avg_score |
+--------------------------+-----------+
| The Shawshank Redemption |      5.00 |
| Avengers: Endgame        |      5.00 |
| Inception                |      4.50 |
| The Matrix               |      4.50 |
| Interstellar             |      4.50 |
+--------------------------+-----------+
+--------------------------+-----------+
| title                    | avg_score |
+--------------------------+-----------+
| Inception                |      4.50 |
| The Matrix               |      4.50 |
| Interstellar             |      4.50 |
| Titanic                  |      4.00 |
| The Shawshank Redemption |      5.00 |
+--------------------------+-----------+
