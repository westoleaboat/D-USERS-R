#!/usr/bin/env bash
# exit on error
set -o errexit

# Create the initial superuser before migrating
python manage.py create_initial_superuser

poetry install


python manage.py collectstatic --no-input
python manage.py migrate