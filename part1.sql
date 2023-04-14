DROP DATABASE part1
CREATE DATABASE part1
\c part1


--med center
CREATE TABLE doctors(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE patients(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE doctors_patients(
    id SERIAL PRIMARY KEY,
    doctors_id INT REFERENCES doctors(id),
    patients_id INT REFERENCES patients(id)
);

CREATE TABLE diseases(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    patients_id INT REFERENCES patients(id)
);

-- craiglist

CREATE TABLE regions (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
)

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    pref_regions INT REFERENCES regions(id)
)

CREATE TABLE cats(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
)

CREATE TABLE posts(
    id SERIAL PRIMARY KEY,
    user_id INT REFRENCES users(id),
    region INT REFERENCES regions(id),
    category INT REFRENCES cats(id)
)

-- soccer

CREATE TABLE teams (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,

)

CREATE TABLE players(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    team_id INT REFERENCES teams(id),
)

CREATE TABLE goals(
    id SERIAL PRIMARY KEY,
    amount INT,
    player_id INT REFERENCES players(id)
)

CREATE TABLE matches(
    id SERIAL PRIMARY KEY,
    team_1_id INT REFERENCES teams(id),
    team_2_id INT REFRENCES teams(id)
)



