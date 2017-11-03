#!/bin/bash

PWD=$(cd "$(dirname "$0")"; pwd)

${PWD}/misc/db/create_database.sh

cd ${PWD}
python3.6 manage.py makemigrations
python3.6 manage.py migrate
python3.6 manage.py createsuperuser
