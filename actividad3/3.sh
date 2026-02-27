#!/bin/bash

altura=$1
peso=$2

IMC=($2/$1*$1)*10000
if [ "$IMC" -lt 18.5 ]; then
    echo "tu peso es bajo"
elif [ "$IMC" -ge 18.5 ] && [ "$IMC" -lt 25 ]; then
    echo "tu peso es saludable"
elif [ "$IMC" -ge 25 ] && [ "$IMC" -le 29 ]; then
    echo "tu peso es alto"
else
    echo "tienes sobrepeso"
fi
