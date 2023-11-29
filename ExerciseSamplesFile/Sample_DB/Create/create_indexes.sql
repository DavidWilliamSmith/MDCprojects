-- Add an index to the title column in the movies table
CREATE INDEX idx_title ON movies (title);

-- Add an index to the release_year column in the movies table
CREATE INDEX idx_release_year ON movies (release_year);

-- Add an index to the name column in the genres table
CREATE INDEX idx_genre_name ON genres (name);

-- Add an index to the first_name and last_name columns in the actors table
CREATE INDEX idx_actor_name ON actors (first_name, last_name);

-- Add an index to the first_name and last_name columns in the directors table
CREATE INDEX idx_director_name ON directors (first_name, last_name);

-- Add an index to the movie_id and genre_id columns in the movie_genres table
CREATE INDEX idx_movie_genres ON movie_genres (movie_id, genre_id);

-- Add an index to the movie_id and actor_id columns in the movie_actors table
CREATE INDEX idx_movie_actors ON movie_actors (movie_id, actor_id);

-- Add an index to the movie_id and director_id columns in the movie_directors table
CREATE INDEX idx_movie_directors ON movie_directors (movie_id, director_id);

-- Add an index to the user_id and movie_id columns in the user_reviews table
CREATE INDEX idx_user_reviews ON user_reviews (user_id, movie_id);

-- Add an index to the movie_id column in the movie_trivia table
CREATE INDEX idx_movie_trivia ON movie_trivia (movie_id);
