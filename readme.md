git clone https://github.com/Rojoosam/Laravel-Template.git

These commands are executed in the terminal at Laravel-Template/~
If a container isn't working, you can check it in Docker Desktop and view its logs (or use terminal instead)

1. docker-compose run --rm composer create-project --prefer-dist laravel/laravel .

- Copy this: 
DB_CONNECTION=mysql
DB_HOST=mysql
DB_PORT=3306
DB_DATABASE=laravel
DB_USERNAME=root
DB_PASSWORD=super_secret_123

- Search in /app/.env the DB connections
- Replace that fragment with the element copied

2. docker-compose up --build -d
5. Search on your browser "localhost" to access app 
6. Search on your browser "localhost:8080" to access PHP MyAdmin user
- User: root
- Password: super_secret_123

To remove containers:
4. docker-compose down 