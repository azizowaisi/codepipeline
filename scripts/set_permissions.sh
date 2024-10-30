#!/bin/bash
cd /var/www/codepipeline
sudo chown -R ubuntu:www-data var/cache var/logs
sudo chmod -R 775 var/cache var/logs
