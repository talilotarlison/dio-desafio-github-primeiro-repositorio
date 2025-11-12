Atividade 1

#!/bin/bash
echo "Bem-vindo ao meu script!"
Copiar código
Utilizamos o comando echo para exibir a mensagem "Bem-vindo ao meu script!" no terminal quando o script é executado.

Atividade 2

#!/bin/bash
tar -czf backup.tar.gz /caminho/do/diretorio
Copiar código
O script utiliza o comando tar para criar um arquivo compactado e tarball chamado "backup.tar.gz" do conteúdo do diretório especificado. O -czf indica a criação de um arquivo comprimido, usando gzip para compressão.

Atividade 3

#!/bin/bash
echo "Digite o nome do diretório:"
read nome_diretorio
mkdir $nome_diretorio
Copiar código
Script interativo que solicita ao usuário o fornecimento de um nome de diretório. Na sequência, utiliza o comando mkdir para criação do diretório com o nome fornecido.

Atividade 4

#!/bin/bash
echo "Digite o nome do arquivo:"
read nome_arquivo
if [ -e $nome_arquivo ]; then
  echo "O arquivo existe."
else
  echo "O arquivo não existe."
fi
Copiar código
Este script solicita ao usuário um nome de arquivo, em seguida, utiliza uma estrutura condicional (if) para verificar se o arquivo existe (-e). Dependendo do resultado, imprime uma mensagem indicando a existência ou não do arquivo.

Atividade 5

#!/bin/bash
for i in {1..5}
do
  echo $i
done
Copiar código
O script utiliza um loop for para iterar de 1 a 5 e o comando echo para imprimir cada número no terminal.
