#!/bin/bash -e
docker-compose rm -svf webapp
docker-compose rm -svf ldap
docker-compose rm -svf vm
docker-compose rm -svf ansible
docker volume rm $(docker volume ls -qf dangling=true)
