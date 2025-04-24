#!/bin/bash

# Install Apache2
sudo apt update
sudo apt install apache2 -y

# Create a simple HTML file
echo "Welcome to iq infinite pvt ltd." > /var/www/html/index.html

# Start Apache2 service
sudo systemctl start apache2

# Enable Apache2 to start on boot
sudo systemctl enable apache2

