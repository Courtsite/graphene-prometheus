#!/bin/bash

docker build -f Dockerfile.dev -t graphene-prometheus-dev .

docker run --rm -it \
    $ARGS \
    --init \
    -v "$(pwd):/graphene-prometheus/" \
    -w /graphene-prometheus/ \
    graphene-prometheus-dev \
    $@
