#!/bin/bash

PWD=$(cd "$(dirname "$0")"; pwd)

cd ${PWD}

rm -rf api/migrations/*
touch api/migrations/__init__.py

cd misc/db
./drop_database.sh
./create_database.sh
cd -


python3.6 manage.py makemigrations
python3.6 manage.py migrate
python3.6 manage.py createsuperuser


cd misc/db
./init_database.sh
cd -
