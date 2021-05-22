-- Create tables for raw data to be loaded into
CREATE TABLE oscars (
    title VARCHAR PRIMARY KEY NOT NULL,
    year INT NOT NULL,
    category CHAR NOT NULL,
    winner BOOLEAN NOT NULL
);

CREATE TABLE rotten_tomatoes_data (
    title VARCHAR PRIMARY KEY NOT NULL,
    critic_score VARCHAR NOT NULL,
    people_score VARCHAR NOT NULL,
    total_reviews INT NOT NULL,
    rating VARCHAR NOT NULL
);

-- Make query with JOIN
SELECT rotten_tomatoes.title, rotten_tomatoes.critic_score,rotten_tomatoes.people_score.rotten_tomatoes.total_reviews,rotten_tomatoes.rating,oscars.year,oscars.category,oscars.winner
FROM rotten_tomatoes
LEFT JOIN oscars
ON oscars.title=rotten_tomatoes.title