#!/usr/bin/env bash

# client
cd /project/fet_client/fet/
yarn
yarn run serve &

# server
cd /project/fet_server

# init:
python manage.py migrate
# have to set FIXER_API_KEY in project/settings_local.py

python manage.py runserver 0:8000
