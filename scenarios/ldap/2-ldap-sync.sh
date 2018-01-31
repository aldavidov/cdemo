#!/bin/bash -e
set -o pipefail
docker-compose exec cli conjur authn login -u admin -p Cyberark1
docker-compose exec -T cli conjur ldap-sync policy show > ldap-sync.yml
docker-compose exec -T cli conjur elevate policy load /src/ldap/ldap-sync.yml
printf "\n\nNow browse the users and groups in the UI to see the synced updates.\n\n"
