#!/bin/bash
docker-compose build --no-cache
docker-compose up -d
docker exec -ti cursodb_db_1 python3 load_mysql.py
