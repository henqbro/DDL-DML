-- 1. Создание пользователя
CREATE USER 'sys_temp'@'localhost' IDENTIFIED BY 'TempPass123!';

-- 2. Список пользователей
SELECT host, user FROM mysql.user;

-- 3. Выдача всех привилегий
GRANT ALL PRIVILEGES ON *.* TO 'sys_temp'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;

-- 4. Список прав sys_temp
SHOW GRANTS FOR 'sys_temp'@'localhost';

-- 5. Ппроверка текущего пользователя под sys_temp
SELECT USER(), CURRENT_USER();

-- 6. Создание базы sakila
CREATE DATABASE sakila CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

-- 7. Загрузка дампа выполнялась из терминала:
-- mysql -u root -p sakila < /Users/USER/Downloads/sakila-schema.sql
-- mysql -u root -p sakila < /Users/USER/Downloads/sakila-data.sql

-- 8. Проверка таблиц sakila
USE sakila;
SHOW TABLES;
