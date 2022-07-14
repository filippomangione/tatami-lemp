FROM php:7-fpm

#ARG LARAVEL_VERSION

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install PHP extensions
RUN docker-php-ext-install pdo_mysql mysqli mbstring exif pcntl bcmath gd

# Get latest Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Install NodeJs
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash && \
    apt-get install -yq nodejs build-essential

# fix npm - not the latest version installed by apt-get
RUN npm install -g npm

COPY ./app /var/www/html


