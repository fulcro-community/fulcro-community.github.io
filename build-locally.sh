#!/bin/bash
set -e
echo "Building the site based on antora-playbook-local.yml..."
#docker run --rm -it -v "$PWD:/antora:Z" antora/antora ash # troubleshooting shell
#docker run --rm -it -v "$PWD:/antora:Z" antora/antora antora-playbook.yml
docker run --rm -it -v "$(pwd | xargs dirname):/fulcro-community:Z" -v "$PWD:/antora:Z" antora/antora antora-playbook-local.yml
echo  "Done. See ./build/site/"
