#!/bin/bash

set -e

readonly ARGS="$@"
readonly PROGDIR=$(cd -- $(dirname "$0") && pwd)

main () {
  docker rmi clojurestacks
}

main ARGS
