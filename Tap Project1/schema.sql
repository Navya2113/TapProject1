CREATE DATABASE IF NOT EXISTS student_db;
USE student_db;

CREATE TABLE IF NOT EXISTS student (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    course VARCHAR(100) NOT NULL
);

-- Insert dummy data
INSERT INTO student (name, email, course) VALUES 
('John Doe', 'john.doe@example.com', 'Computer Science'),
('Jane Smith', 'jane.smith@example.com', 'Information Technology'),
('Mike Johnson', 'mike.j@example.com', 'Software Engineering');
