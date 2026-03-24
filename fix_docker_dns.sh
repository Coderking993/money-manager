#!/bin/bash

# Ensure the docker config directory exists
mkdir -p /etc/docker

# Add Google DNS to Docker's daemon.json
# Note: we are overwriting to keep it simple, but usually it only has custom configs if explicitly added.
echo '{
  "dns": ["8.8.8.8", "8.8.4.4"]
}' > /etc/docker/daemon.json

# Restart Docker to apply networking changes
systemctl restart docker

echo "Docker DNS updated. Starting the MySQL container..."

# Try to start the compose services
cd "/home/suyash/Desktop/Money Manager"
docker-compose up -d

echo "Done! The database should now be running."
