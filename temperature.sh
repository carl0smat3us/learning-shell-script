#!/bin/bash

value=$1
option=$2

if [ "$option" = "-k" ]; then
    celsius=$(echo "$value + 273.15" | bc)
    fahrient=$(echo "($celsius * 1.8) + 32" | bc)

    echo "$celsius Celsius"
    echo "$fahrient Fahrient"
elif [ "$option" = "-c" ]; then
    kelvin=$(echo "$value - 273.15" | bc)
    fahrient=$(echo "($value * 1.8) + 32" | bc)

    echo "$kelvin Kelvin"
    echo "$fahrient Fahrient"
elif [ "$option" = "-f" ]; then
    celsius=$(echo "($value - 32) / 1.8000" | bc)
    kelvin=$(echo "($value - 32) * (5/9) + 273.15" | bc)

    echo "$celsius Celsius"
    echo "$kelvin Kelvin"
else
    echo -e "Opção inválida..."
fi