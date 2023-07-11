-- Create profiles database; 
CREATE DATABASE profiles; 


-- Create users Table  
-- Column ==>> (id, first_name, last_name, email, age, country, profession, phone_number)
CREATE TABLE users (
  id INT,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  email VARCHAR(255),
  age INT,
  country VARCHAR(255),
  profession VARCHAR(255),
  phone_number VARCHAR(20)
);


-- Insert  Data to the users table. 
-- >> Scripts in the insert users_in_users_table.sql file