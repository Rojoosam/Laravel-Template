git clone https://github.com/Rojoosam/Laravel-Template.git

1. Run docker-compose run --rm composer create-project --prefer-dist laravel/laravel .
2. Run docker-compose up -d
3. Edit the .env file configuration

To remove containers:
4. docker-compose down 


...docker exec -it laravel-app php artisan migrate