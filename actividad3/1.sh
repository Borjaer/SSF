#!/bin/bash

# Parámetros: Días, Horas, Segundos
TOTAL=$(( $1*86400 + $2*3600 + $3 ))
echo $TOTAL
