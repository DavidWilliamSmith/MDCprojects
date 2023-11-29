-- Create a new user
CREATE USER 'your_user'@'localhost' IDENTIFIED BY 'your_password';

-- Grant privileges to the user
GRANT SELECT, INSERT, UPDATE, DELETE ON mYHoRRoRdb.* TO 'your_user'@'localhost';


