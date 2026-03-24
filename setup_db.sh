#!/bin/bash
# Setup script for the Money Manager database
# Creates the database and a dedicated MySQL user

echo "Creating database and user for Money Manager..."

sudo mysql <<EOF
CREATE DATABASE IF NOT EXISTS moneymanager;
CREATE USER IF NOT EXISTS 'moneymanager'@'localhost' IDENTIFIED BY 'moneymanager123';
GRANT ALL PRIVILEGES ON moneymanager.* TO 'moneymanager'@'localhost';
FLUSH PRIVILEGES;
EOF

echo "Done! Database 'moneymanager' and user 'moneymanager' created successfully."
echo ""
echo "To run the backend, use:"
echo "  DB_USERNAME=moneymanager DB_PASSWORD=moneymanager123 ./mvnw spring-boot:run"
