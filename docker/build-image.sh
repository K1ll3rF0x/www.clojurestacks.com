#!/bin/bash

set -e

readonly ARGS="$@"
readonly PROGDIR=$(cd -- $(dirname "$0") && pwd)

main () {
  docker build -t clojurestacks ${PROGDIR}/..
}

main ARGS
