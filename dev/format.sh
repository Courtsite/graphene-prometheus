#!/bin/bash

set -e

echo "-- Autoformatting"

isort -rc graphene_prometheus
autoflake -r --in-place --remove-all-unused-imports --remove-unused-variables --ignore-init-module-imports graphene_prometheus
black graphene_prometheus
