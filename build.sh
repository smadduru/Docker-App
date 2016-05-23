#!/bin/bash


docker build -t apache .

docker build -t mariadb .

dockerbuild -t mariadb_data .

dockerbuild -t wordpress .
