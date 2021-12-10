#!/bin/bash

mkdir -p /gunicorn/tmp /gunicorn/tmp/heartbeat /gunicorn/tmp/upload

gunicorn --worker-tmp-dir=/dev/shm --bind=0.0.0.0:8000 wsgi:app 
