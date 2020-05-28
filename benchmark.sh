#!/bin/sh

#usage: benchmark.sh LANG URL [SELECTOR]

if [ "$1" = "go" ]; then
    cd go-benchmark
    mstime ./benchmark.sh $2 ${3:-""}
else 
    cd ./java-benchmark/my-app
    mstime ./benchmark.sh $2 ${3:-""}
fi
