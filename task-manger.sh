#!/bin/bash

declare -A tasks

init() {
    while true; do
        echo "--------------------------------"
        echo "        Lista de tarefa         "
        echo "--------------------------------"

        echo "[ 1 ] Adicionar tarefa"
        echo "[ 2 ] Editar tarefa"
        echo "[ 3 ] Eliminar tarefa"
        echo "[ 4 ] Listar tarefas"
        echo "[ 5 ] Sair"

        read option
        clear

        if [ $option = 1 ]; then
            create_task
        elif [ $option = 2 ]; then
            edit_task
        elif [ $option = 3 ]; then
            delete_task
        elif [ $option = 4 ]; then
            show_tasks
        elif [ $option = 5 ]; then
            exit
        else
            echo "Opção invalida..."
        fi
    done
}

show_tasks() {
    for task in "${tasks[@]}"; do
        echo "[ $task ]"
    done
}

create_task() {
    echo "Degite alguma coisa: "
    read value

    tasks[$((${#tasks[@]} - 1))]=$value
}

edit_task() {
    echo "Qual posição: "
    read position

    echo "Degite alguma coisa: "
    read value

    tasks[$position]=$value
}

delete_task() {
    echo "Qual posição: "
    read position

    unset $tasks[$position]
}

init
