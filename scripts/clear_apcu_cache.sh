#!/bin/bash

# Run the PHP command to clear the APCu cache
php -r 'if (function_exists("apcu_clear_cache")) { apcu_clear_cache(); echo "APCu cache cleared successfully.\n"; } else { echo "APCu is not installed or not enabled.\n"; }'