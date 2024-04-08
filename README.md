### Django Docker
### Install virtual env
mkdir dockerdjango
cd dockerdjango
python -m venv .venv

### Activate virtual env for window with bash
. .venv/Scripts/activate

### Install Django
pip install Django

### Creating a project
django-admin startproject dockerdjango

### Make database migration
python manage.py migrate

### Create super user for admin connection
python manage.py createsuperuser

### Run server
cd dockerdjango
python manage.py runserver

### Create an application
python manage.py startapp superviserapp

### Make migration for database
python manage.py makemigrations

### Migrate to the database
python manage.py migrate

### Build with docker-compose
docker compose up -d --build

### Make migrations
docker compose exec back python manage.py migrate

### Create superuser
docker compose exec back python manage.py createsuperuser

