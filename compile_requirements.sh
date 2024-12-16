#!/usr/bin/env bash
#
# Pin current dependencies versions.
#
unset CONDA_PREFIX  # if conda is installed, it will mess with the virtual env

START_TIME=$(date +%s)

pip-compile requirements.in --output-file=requirements.txt --upgrade

END_TIME=$(date +%s)

echo "Total execution time: $((END_TIME - $START_TIME)) seconds"
