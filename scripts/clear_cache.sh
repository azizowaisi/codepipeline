#!/bin/bash
cd /var/www/codepipeline

composer dump-autoload --no-dev --classmap-authoritative

php bin/console cache:clear --env=prod --no-warmup;

chmod -R 777 var/cache
chmod -R 777 var/log