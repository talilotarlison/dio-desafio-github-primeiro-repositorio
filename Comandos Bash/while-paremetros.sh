#!/bin/bash

# Verifica se pelo menos um arquivo foi passado
if [ "$#" -eq 0 ]; then
  echo "Uso: $0 arquivo1 [arquivo2 ...]"
  exit 1
fi

# Armazena todos os argumentos em um array
arquivos=("$@")

# Loop pelos arquivos fornecidos
for arquivo in "${arquivos[@]}"; do
  if [ ! -e "$arquivo" ]; then
    echo "Arquivo não encontrado: $arquivo"
    exit 1
  fi
done

echo "Todos os arquivos foram encontrados com sucesso."
