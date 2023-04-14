-- CREATE TABLE posts (
    -- title TEXT,
    -- username TEXT,
    -- link TEXT
-- )

DROP DATABASE reddit_db;
CREATE DATABASE reddit_db;
\c reddit_db




CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(15) UNIQUE NOT NULL,
    password VARCHAR(20) NOT NULL

);


CREATE TABLE comments(
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users ON DELETE CASCADE,
    comment_text TEXT NOT NULL
);

CREATE TABLE subreddits (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(id) ON DELETE SET NULL,
    name VARCHAR(15) NOT NULL,
    description TEXT,
    subscribers INT CHECK (subscribers >= 1) DEFAULT 1,
    is_private BOOLEAN DEFAULT false
);



INSERT INTO USERS (username,password)
VALUES 
('gray lady', 'asd'),
('stevie-chicks','asdasd');


INSERT INTO subreddits
(name,user_id)
VALUES
('chickens', 2),
('waterluvers',1);

INSERT INTO comments
(user_id,comment_text)
VALUES
(2,'cluck'),
(2,'bock'),
(1,'assd');