#!/bin/bash

set -e

readonly ARGS="$@"
readonly PROGDIR=$(cd -- $(dirname "$0") && pwd)

main () {
  docker run -it -v ${PROGDIR}/../:/clojurestacks --name clojurestacks --rm -p 4000:4000 clojurestacks
}

main ARGS
