ARG  PHP_VERSION=8.2
FROM shinsenter/laminas:php${PHP_VERSION}



# ==========================================================

# Control your timezone
ENV TZ="UTC"

# sets GID and UID
ENV PUID=9999
ENV PGID=9999

# sets web server root path
ENV WEBHOME="/var/www/html"

# ==========================================================

# You can easily change PHP-FPM configurations
# by using pre-defined Docker's environment variables.
# Learn more: https://code.shin.company/php#customize-docker-image