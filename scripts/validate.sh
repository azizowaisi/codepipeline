#!/bin/bash
set -x  # Enable debug mode

if curl -Is http://localhost | head -n 1 | grep "200 OK"; then
    echo "Web server is running and returned a 200 OK response."
else
    echo "Web server is not running or returned a non-200 response."
    exit 1
fi