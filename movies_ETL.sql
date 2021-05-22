-- Create tables for raw data to be loaded into
CREATE TABLE oscars (
    title VARCHAR PRIMARY KEY NOT NULL,
    year INT NOT NULL,
    category VARCHAR NOT NULL,
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
SELECT rotten_tomatoes_data.title, rotten_tomatoes_data.critic_score,rotten_tomatoes_data.people_score,rotten_tomatoes_data.total_reviews,rotten_tomatoes_data.rating,oscars.year,oscars.category,oscars.winner
FROM rotten_tomatoes_data
JOIN oscars
ON oscars.title=rotten_tomatoes_data.title
