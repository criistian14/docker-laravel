# How to start the services
- `docker-compose up -d web phpmyadmin db`

# Activate hot reload 
- `docker-compose run --rm -p 3000:3000 npm run watch`

# How to run a specific command
- `docker-compose run --rm composer install`
- `docker-compose run --rm npm install`
- `docker-compose run --rm artisan migrate`