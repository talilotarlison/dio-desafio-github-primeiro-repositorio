Atividade 1

#!/bin/bash
sudo apt update -y
sudo apt upgrade -y
Copiar código
O script utiliza os comandos apt update e apt upgrade para automatizar a atualização de pacotes no sistema operacional Debian/Ubuntu. O parâmetro -y é usado para confirmar automaticamente todas as perguntas de confirmação.

Atividade 2

#!/bin/bash
prefixo="Novo_"
for arquivo in *; do
  mv "$arquivo" "$prefixo$arquivo"
done
Copiar código
O script adiciona o prefixo "Novo_" aos nomes de todos os arquivos no diretório em que é executado.

Atividade 3

#!/bin/bash
echo "Digite o nome do novo usuário:"
read nome_usuario
sudo useradd -m $nome_usuario
sudo passwd $nome_usuario
Copiar código
O script solicita ao usuário o nome do novo usuário, cria um diretório pessoal para o usuário (useradd -m), e define uma senha (passwd).

Atividade 4

#!/bin/bash
limite=90
espaco=$(df -h | awk 'NR==2 {print $5}' | sed 's/%//')

if [ $espaco -gt $limite ]; then
  echo "Alerta: Espaço em disco excedeu $limite%."
else
  echo "Espaço em disco está abaixo do limite."
fi
Copiar código
O script coleta a porcentagem de espaço em disco usando o comando df, compara com um limite predefinido (90% neste exemplo) e emite um alerta se exceder.

Atividade 5

#!/bin/bash
origem="/caminho/do/diretorio"
destino="/caminho/do/backup"
data=$(date +"%Y%m%d")
tar -czf $destino/backup_$data.tar.gz $origem
Copiar código
O script utiliza o comando tar para criar um arquivo compactado e tarball, adicionando a data ao nome do arquivo para distinguir backups diários. O gzip (-z) é usado para compressão.
