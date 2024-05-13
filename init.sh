#!/usr/bin/env bash

OPTS=""
if [[ "$1" = "-f" ]]; then
  OPTS="--ignore-certs"
fi

ansible-galaxy install fubarhouse.rust "$OPTS"
ansible-galaxy install staticdev.pyenv "$OPTS"
