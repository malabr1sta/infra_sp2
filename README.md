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
        - sudo infra/docker-compose up -d --build
    - После чего контейнеры будут собраны и запущены.
     Вместе с этим будет произведена миграция баз данных.
     Также, будет создан суперпользователь(username=admin, password=10101), что бы изменить данные пользователя для этого перед запуском docker-compose, отредактируйте файл "./api_yamdb/.admin_data.env".
     Каждый раз меняя данные и запуская docker-compose, будет создаваться новый пользователь.
     Вы можете удалить ".admin_data.env" и тогда после запуска docker-compose для создания суперпользователя выполните следующие команды:
        - sudo docker container ls (узнайте id контейнера "web")
        - sudo docker exec -it <id_контейнера> bash (команда для входа в контейнер)
        - python manage.py createsuperuser
    
    - по адресу http://localhost/admin/ будет доступна панель администратора. 
    - по адресу http://localhost/redoc/ будет доступна документация проекта.
    - для создания резервной копии выполните следующие команды:
        - sudo docker exec -it <id_контейнера> bash
        - python manage.py dumpdata > fixtures.json

#### Автор
    Марчиладзе Г. Д.
 