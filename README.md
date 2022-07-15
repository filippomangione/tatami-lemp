# Tatami LEMP

This is a simple Docker setup for legacy fullstack web development environment. I needed something light and basic to run old php scripts and legacy Laravel 7 projects. **Note: this is meant just for development purpose.**

Available software:
- NGINX
- MySql 5.7.10
- PHP 7
- PHP-FPM
- Composer
- PhpMyAdmin
- NodeJS 16

## Setup
Download and install Docker desktop from [here](https://docs.docker.com/get-docker/).

Duplicate and rename .env.example as .env and change environment variables as needed.

Put all you project files into `/app` folder.

## Laravel 7 Setup
Copy all Tatami files in the root of a Laravel 7 project except `/app` folder.
Remember to merge `.env.laravel.example` variables with Laravel `.env`.

## Development
Start all services with Docker Compose:

```
// Start all services
docker-compose up

// use build flag if you need to rebuild images
docker-compose up --build
```

> Note: first time you launch servicess, images will be built; process may be slow.

## Stop all services
```
docker-compose down
```


## Bash
You can use a `docker-compose exec` to get an interactive prompt and access app container.
This is very useful to run Composer and Artisan commands or npm scripts.
When all services are up:

```
docker-compose exec app bash
```
