CREATE DATABASE demo_db;

CREATE TABLE IF NOT EXISTS users
( id INTEGER NOT NULL AUTO_INCREMENT,
  firstName VARCHAR(255) NOT NULL,
  lastName VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO users (first_name, last_name,  email) VALUES (:first_name, :last_name, :email)

SELECT * FROM users

SELECT * FROM users WHERE id = :id;

DELETE FROM users WHERE id = :id;