
-- БАЗА ДАНИХ
-- Можливість створення БД з метою уникнення некваліфікованих
-- дій, краще залишити за розробником.
-- Тому такий функціонал у додатку не прописуємо.
-- Можемо створити БД через візуальний інструмент, наприклад,
-- MySQL Workbench.
CREATE DATABASE demo_db;


-- ТАБЛИЦІ
-- Можливість створення таблиць БД, з метою уникнення некваліфікованих
-- дій, краще залишити за розробником.
-- Тому такий функціонал у додатку не прописуємо.
-- Попередньо, необхідно спроектувати таблиці та їх зв'язки,
-- на основі сутностей реального світу.
-- Можемо створити таблиці БД через візуальний інструмент, наприклад,
-- MySQL Workbench.

-- Для фінансових значень використано DECIMAL(M,D).
-- DECIMAL зберігає точні числові значення даних.
-- https://dev.mysql.com/doc/refman/8.0/en/fixed-point-types.html
-- M – максимальна кількість цифр (точність). Має діапазон від 1 до 65.
-- D – кількість цифр праворуч від коми (шкала). Має діапазон від 0 до 30
-- і не повинен перевищувати M.
-- https://dev.mysql.com/doc/refman/8.0/en/precision-math-decimal-characteristics.html
-- Грошовий вираз - цифрова інформація. Для грошових розрахунків FLOAT та DOUBLE
-- схильні до помилки округлення і можуть не підходити.
-- Для цього більше підходить DECIMAL (M, 2).
-- Однак, може не форматувати подання даних у HTML.

CREATE TABLE IF NOT EXISTS users
( id INTEGER NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(128) NOT NULL,
  last_name VARCHAR(128) NOT NULL,
  email VARCHAR(128) NOT NULL,
  PRIMARY KEY (id)
);

-- HQL
INSERT INTO User (first_name, last_name,  email) VALUES (:first_name, :last_name, :phone, :email)
-- SQL
INSERT INTO users (first_name, last_name,  email) VALUES (::first_name, :last_name, :phone, :email)


-- HQL
FROM User
-- SQL
SELECT * FROM users

-- TO FIX:
-- HQL
UPDATE User SET email = :email WHERE id = :id
-- SQL
UPDATE users SET email = :email WHERE id = :id


-- HQL
DELETE FROM User WHERE id = :id
-- SQL
DELETE FROM users WHERE id = :id;

