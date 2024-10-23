#!/bin/bash
cd /var/www/codepipeline
php bin/console cache:clear --env=prod
php bin/console cache:warmup --env=prod
