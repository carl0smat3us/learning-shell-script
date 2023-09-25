#!/bin/bash

function soma() {
    return $(($1 + $2))
}

function subtração() {
    return $(($1 - $2))
}

function multiplicação() {
    return $(($1 * $2))
}

function divisão() {
    return $(($1 / $2))
}

function init() {
    clear
    echo "Calculadora Shell!"
    echo "Degite o primeiro valor: "
    read number1

    echo "Degite o segundo valor: "
    read number2

    clear
    echo "Calculadora Shell!"
    echo "Selecione a operação:"
    echo "1. Soma"
    echo "2. Subtração"
    echo "3. Multiplicação"
    echo "4. Divisão"

    read option

    if [ $option = 1 ]; then
        soma $number1 $number2
    elif [ $option = 2 ]; then
        subtração $number1 $number2
    elif [ $option = 3 ]; then
        multiplicação $number1 $number2
    elif [ $option = 4 ]; then
        divisão $number1 $number2
    elif [ $option = 5]; then
        exit
    else
        echo "Operação invalida"
    fi

    resultado="$?"

    echo "O resultado da operação é $resultado"
}

init
