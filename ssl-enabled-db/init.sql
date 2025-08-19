-- Ensure root has GRANT OPTION
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;

-- Enforce SSL for the root user
ALTER USER 'root'@'%' REQUIRE X509;

-- Create a new user for Spring Boot with SSL enforcement
CREATE USER 'test_user'@'%' IDENTIFIED BY 'Password2025' REQUIRE X509;

-- Grant all privileges to the new user on test_db
GRANT ALL PRIVILEGES ON test_db.* TO 'test_user'@'%';

-- Apply changes
FLUSH PRIVILEGES;
