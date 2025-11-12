Para verificar o que tem dentro dele, se de fato foi compactado corretamente, podemos usar o tar em uma função de descompactar: tar -tf.
Vamos indicar saida.tar.gz e verificar. Estão lá os dois arquivos que passamos os parâmetros corretamente.

Para saber mais: passando parâmetros em scripts


A passagem de parâmetros em scripts em Bash no Ubuntu é uma forma de fornecer informações ou argumentos para o script durante sua execução. Isso torna os scripts mais flexíveis e reutilizáveis, pois seu comportamento é ajustado de acordo com os argumentos fornecidos.

Essa passagem de parâmetros é realizada por meio de variáveis especiais, conhecidas como variáveis de posição. Elas são numeradas de 1 a 9, com $1 representando o primeiro argumento, $2 representando o segundo, e assim por diante. Além disso, todos os argumentos posicionais podem ser acessados através do $@.

A seguir, temos um exemplo de script que verifica se foram fornecidos exatamente dois argumentos na linha de comando. Se não, ele exibe uma mensagem de erro. Caso contrário, ele atribui os valores dos argumentos às variáveis arg1 e arg2 e os imprime.

#!/bin/bash

if [ $# -ne 2 ]; then
  echo "Erro! Nao foram fornecidos dois argumentos"
  exit 1
fi

arg1=$1
arg2=$2

echo "O primeiro argumento é: $arg1"
echo "O segundo argumento é: $arg2"
