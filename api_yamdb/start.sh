#!/bin/sh
python manage.py migrate
python manage.py collectstatic --no-input
if [ -f "./.admin_data.env" ]; then
    . ./.admin_data.env
    ./manage.py shell -c "from reviews.user import User; User.objects.create_superuser('$USERNAME', '$EMAIL', '$PASSWORD') if not User.objects.filter(username='$USERNAME').exists() else ..."
fi
gunicorn api_yamdb.wsgi:application --bind 0:8000
