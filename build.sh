#!/usr/bin/env bash
# exit on error
set -o errexit



poetry install




python manage.py collectstatic --no-input
python manage.py migrate

# Create the initial superuser before migrating
python manage.py create_initial_superuser