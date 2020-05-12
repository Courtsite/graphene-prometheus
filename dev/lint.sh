#!/bin/bash

set -e

FORMATTER="$( dirname "${BASH_SOURCE[0]}" )/format.sh"

$FORMATTER

echo "-- Linting"

flake8 graphene_prometheus
