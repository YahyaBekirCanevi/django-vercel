#!/bin/bash

# Build the project
echo "Building the project..."
python3.13 -m pip install -r requirements.txt

echo "Make Migrations..."
python3.13 manage.py makemigrations --noinput
python3.13 manage.py migrate --noinput

echo "Collect Static..."
python3.13 manage.py collectstatic --noinput --clear