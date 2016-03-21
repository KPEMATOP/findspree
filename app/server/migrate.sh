#!/usr/bin/env bash
basePath=./migration
./env.sh migrate -url "postgres://game:game@localhost:5432/game_main" -path ${basePath}/$@
