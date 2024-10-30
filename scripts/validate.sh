#!/bin/bash
curl -Is http://localhost | head -n 1 | grep "200 OK"
