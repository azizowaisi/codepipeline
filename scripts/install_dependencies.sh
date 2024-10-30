#!/bin/bash
cd /var/www/codepipeline

export COMPOSER_ALLOW_SUPERUSER=1

composer install --no-dev --optimize-autoloader --no-interaction
