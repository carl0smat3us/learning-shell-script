#!/bin/bash

function welcome() {
    echo "Welcome back $1!"
}

function soma() {
    echo $(($1 + $2))
}

welcome_response=$(welcome "Carlos")
soma_response=$(soma 10 10)

echo $welcome_response
echo $soma_response
