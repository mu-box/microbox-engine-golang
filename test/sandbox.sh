#!/bin/bash
#
# Launches the test environment within a docker container
# and drops into a console

test_dir="$(dirname $(readlink -f $BASH_SOURCE))"
engine_dir="$(dirname ${test_dir})"

# source the env helper
. $test_dir/util/env.sh

docker run \
  -it \
  -u=gomicro \
  --privileged=true \
  --workdir=/test \
  -e "PATH=$(path)" \
  --volume=${test_dir}/:/test \
  --volume=${engine_dir}/:/engine \
  --volume=/home/vagrant/ssh:/home/gomicro/.ssh \
  --volume=/tmp/pkgsrc:/data/var/db/pkgin/cache \
  --rm \
  mubox/build \
  /bin/bash
