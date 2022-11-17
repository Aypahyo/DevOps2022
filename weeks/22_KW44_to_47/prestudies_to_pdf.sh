#!/bin/bash
cd "$(dirname "$0")"

if [ "prestudies.pdf" -ot "prestudies.md" ]; then
    rm -f prestudies.pdf
    rm -f out.log
    echo $(date) > out.log
    docker run --rm \
        --volume "$(pwd):/data" \
        --user $(id -u):$(id -g) \
        \
        pandoc/latex prestudies.md -o prestudies.pdf -V colorlinks=true --pdf-engine=xelatex \
        >> out.log 2>&1
fi

cat out.log
