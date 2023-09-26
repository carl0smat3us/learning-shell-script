# Arrays

No shell script existem dois tipos de matriz ou arrays. As matrizes indexadas e as associativas.

## Matriz Indexadas

Armazena elementos com um índice a partir de 0.
Exemplo:

```shell
people=("Carlos" "Miguel" "Chris")
echo $people[0] # Carlos
```

## Matriz Associativas

Armazenam elementos em pares chave-valor.
Exemplo:

```shell
declare -A person

person[name]="Carlos"
person[age]=17

echo ${person[name]} # Carlos
echo ${person[age]} # 17
```
