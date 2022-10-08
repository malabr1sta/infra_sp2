## Project YaMDb.

### Description:
    - Project YaMDb collects user reviews of works. The works are divided into categories: "Books", "Movies", "Music". The list of categories can be expanded by the administrator.


* Technology:
    - python 3.7.
    - Django 2.2.16
    - djangorestframework 3.12.4
    - docker
    - docker-compose
    - gunicorn
    - nginx
    - PostreSQL


* Env file content pattern:
    - DB_ENGINE=django.db.backends.postgresql
    DB_NAME=postgres
    POSTGRES_USER=postgres
    POSTGRES_PASSWORD=10101
    DB_HOST=db
    DB_PORT=5432


* Launching the project:
    - From the "infra_sp2" repository, run the command
        - sudo infra/docker-compose up -d --build (After which the containers will be built and run.)
     
    - To enter the container, run the following commands:
        - sudo docker container ls (find out the id of the container "web")
        - sudo docker exec -it <id_container> bash (command to enter the container)
    
    - To migrate, create a root account and build static, run the commands below while inside the container:
        - python manage.py migrate
        - python manage.py createsuperuser
        - python manage.py collectstatic --no-input
    
    - To create a backup, run the following commands:
        - sudo docker exec -it <id_container> bash
        - python manage.py dumpdata > fixtures.json


    - The admin panel will be available at http://localhost/admin/. 
    - Documentation for the project will be available at http://localhost/redoc/.

#### Author
    Marchiladze G. D.
