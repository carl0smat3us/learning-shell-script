#!/bin/bash

fruits=("Banana" "Abacati" "Maça" "Abacaxi")

for fruit in ${fruits[@]}; do
    echo The $fruit is swite
done

echo ${fruits[2]}
