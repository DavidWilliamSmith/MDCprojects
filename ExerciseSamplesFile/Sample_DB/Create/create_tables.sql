CREATE TABLE movies (
    movie_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    release_year YEAR,
    duration INT,
    plot TEXT,
    rating DECIMAL(3,1),
    cover_image_url VARCHAR(255),  -- New column for cover image URL
    trailer_url VARCHAR(255)       -- New column for trailer URL
);
-- This modification allows you to store URLs pointing to the cover image and trailer for each movie.
--  b. **Genres Table:**
--  It might be beneficial to have a description column for each genre.

CREATE TABLE genres (
    genre_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description TEXT               -- New column for genre description
);

-- **Actors and Directors Tables:**
-- You could include a profile picture URL for actors and directors.
-- Consider adding a biography or summary column for actors and directors.
-- For both `actors` and `directors` tables:

CREATE TABLE actors (
    actor_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    birth_date DATE,
    nationality VARCHAR(50),
    profile_picture_url VARCHAR(255),  -- New column for profile picture URL
    biography TEXT                      -- New column for biography
);

CREATE TABLE directors (
    director_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    birth_date DATE,
    nationality VARCHAR(50),
    profile_picture_url VARCHAR(255),  -- New column for profile            picture URL
    biography TEXT                      -- New column for biography
);
-- These additions allow you to store profile picture URLs and biographies for actors and directors.

-- relationships !!

CREATE TABLE movie_directors (
     movie_id INT,
     director_id INT,
     PRIMARY KEY (movie_id, director_id),
     FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
     FOREIGN KEY (director_id) REFERENCES directors(director_id)
);

CREATE TABLE movie_actors (
    movie_id INT,
    actor_id INT,
    PRIMARY KEY (movie_id, actor_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    FOREIGN KEY (actor_id) REFERENCES actors(actor_id)
);

CREATE TABLE movie_genres (
     movie_id INT,
     genre_id INT,
     PRIMARY KEY (movie_id, genre_id),
     FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
     FOREIGN KEY (genre_id) REFERENCES genres(genre_id)
);

CREATE TABLE user_reviews (
     review_id INT AUTO_INCREMENT PRIMARY KEY,
     user_id INT,  -- Foreign key to reference a user
     movie_id INT, -- Foreign key to reference a movie
     review_text TEXT,
     rating DECIMAL(3,1),
     date_posted DATE
);

 CREATE TABLE movie_trivia (
     trivia_id INT AUTO_INCREMENT PRIMARY KEY,
     movie_id INT, -- Foreign key to reference a movie
     trivia_text TEXT
);


