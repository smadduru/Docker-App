#!/bin/bash


docker run -d --name-- my_webserver apache

docker run -d --name-- my_db mariadb

docker run -d --name my_dbdata mariadb_data

docker run -d --name my_wordpress wordpress
