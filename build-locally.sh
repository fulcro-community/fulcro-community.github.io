#!/bin/bash
set -e
#docker run --rm -it -v "$PWD:/antora:Z" antora/antora ash # troubleshooting shell
echo "BEWARE: Remember to have changed antora-playbook.yml to use docker-local paths instead of GH urls to see any local changes."
docker run --rm -it -v "$PWD:/antora:Z" antora/antora antora-playbook.yml
#docker run --rm -it -v "$(pwd | xargs dirname):/fulcro-community:Z" -v "$PWD:/antora:Z" antora/antora --stacktrace antora-playbook.yml
echo  "Done. See ./build/site/"
