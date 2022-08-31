# Проект YaMDb.

### Описание:
    - Проект YaMDb собирает отзывы пользователей на произведения. Произведения делятся на категории: «Книги», «Фильмы», «Музыка». Список категорий может быть расширен администратором.


* Технологии:
    - python 3.7
    - Django 2.2.16
    - djangorestframework 3.12.4
    - docker
    - docker-compose
    - gunicorn
    - nginx
    - PostreSQL


* Шаблон наполнения env-файла:
    - DB_ENGINE=django.db.backends.postgresql
    DB_NAME=postgres
    POSTGRES_USER=postgres
    POSTGRES_PASSWORD=10101
    DB_HOST=db
    DB_PORT=5432


* Запуск проэкта:
    - Находясь в репозитории "infra_sp2" запустить команду
        - sudo infra/docker-compose up -d --build (После чего контейнеры будут собраны и запущены.)
     
    - Для входа в контейнер выполните следующие команд:
        - sudo docker container ls (узнайте id контейнера "web")
        - sudo docker exec -it <id_контейнера> bash (команда для входа в контейнер)
    
    - Что бы выполнить миграции, создать суперпользователя и собрать статику выполните ниже описаные команды находясь внутри контейнера:
        - python manage.py migrate
        - python manage.py createsuperuser
        - python manage.py collectstatic --no-input
    
    - для создания резервной копии выполните следующие команды:
        - sudo docker exec -it <id_контейнера> bash
        - python manage.py dumpdata > fixtures.json


    - по адресу http://localhost/admin/ будет доступна панель администратора. 
    - по адресу http://localhost/redoc/ будет доступна документация проекта.

#### Автор
    Марчиладзе Г. Д.
 