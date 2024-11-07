#!/bin/bash

python manage.py collectstatic --no-input
python manage.py migrate --noinput

waitress-serve --port=$PORT swiftauth_efax_solu_49936.wsgi:application
