#!/bin/sh

if [ -f .env ]
then
  export $(cat .env | sed 's/#.*//g' | xargs)
fi

docker-compose exec app composer create-project \
    --prefer-dist \
    laravel/laravel:"${LARAVEL_VERSION:-default}"  \
    laravel