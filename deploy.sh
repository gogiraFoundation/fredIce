#!/bin/bash

# Navigate to the project directory
cd /path/to/your/project

# Ensure the script has executable permissions (if needed)
chmod +x deploy.sh

# Pull the latest changes from the repository
git pull origin main

# Install dependencies
pip install -r requirements.txt

# Apply database migrations
python manage.py migrate

# Collect static files
python manage.py collectstatic --noinput

# Restart the application server
sudo systemctl restart your_application_service
