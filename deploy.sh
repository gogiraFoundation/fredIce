#!/bin/bash

cd  C:\Users\simon\Desktop\webstack\gogira\venv\fredmusic>
git pull origin main
source .\.venv\Scripts\activate

pip install -r requirements.txt
python manage.py migrate
python manage.py collectstatic --noinput
systemctl restart your-app-service
