Já avançamos bastante na elaboração e execução de alguns scripts. Notamos que a construção desses scripts para automatização de tarefas, para tornar o trabalho de manutenção e lidar com servidores mais inteligente e automatizado, não é tão difícil quanto parece. Lembra bastante a linguagem C, com uma estrutura de programação que lembra as linguagens usadas no back-end, por exemplo.

Agora, vamos pensar em um caso: nós criamos vários scripts para fazer a compactação de arquivos, armazenar backups, facilitar a movimentação de arquivos entre diretórios e até mesmo entre servidores. Seria útil se pudéssemos incluir em um script a opção de descompactação.

Compactamos um arquivo em dado momento, mas e se quisermos descompactá-lo e armazenar esses arquivos compactados em um diretório específico? Será que conseguiríamos realizar múltiplas tarefas em um único script?

Executando múltiplas tarefas
Para resolver esse desafio, vamos construir um script um pouco diferente daquele que temos construído. Vamos abrir o editor de texto Nano com o comando abaixo para começar a criar esse script.

nano
Copiar código
Sempre começamos indicando quem é o interpretador do script, que no caso é o /bin/bash.

/bin/bash
Copiar código
A estrutura começa a mudar agora. Começaremos perguntando à pessoa usuária qual operação ela deseja realizar. Para isso, usaremos o comando read com a opção -p, que armazenará essa opção digitada pela pessoa usuária em uma variável. Então, colocamos o texto "Entre com a operação desejada: 'compactar' ou 'descompactar'".

Após fechar as aspas do comando, podemos colocar logo na sequência a variável operacao, que vai armazenar esse valor de entrada pela pessoa usuária.

read -p "Entre com a operação desejada: 'compactar' ou 'descompactar'" operacao
Copiar código
Em seguida, usaremos outra estrutura, uma estrutura de seleção, que é o case. Lembra um pouco o switch, em que, a partir da opção de entrada da pessoa usuária, selecionamos as duas operações: compactação ou descompactação.

Iniciamos com um case e inserimos a variável operacao seguida de in "compactar". Nesse momento, precisamos ter cuidado com a indentação, pois estes serão os comandos realizados na opção "compactar".

Depois vamos perguntar à pessoa usuária qual é o nome do arquivo final da compactação. Podemos especificar que a extensão dele deve ser .tar.gz, e ao final, criar a variável arquivo_saida.

O próximo passo é perguntar à pessoa usuária quais serão os arquivos que ela deseja compactar, então digitamos a mensagem "Lista de arquivos separados por espaço:". Salvaremos essa lista na variável arquivos.

Por fim, fazemos a tarefa de compactação e mostramos para a pessoa usuária que a compactação foi concluída com sucesso. Para fazer essa compactação, usarmos o conhecido tar com a opção -czf.

O primeiro parâmetro passado para o comando será o arquivo de saída, sempre informando o diretório e o nome do arquivo que ele vai usar. O segundo parâmetro são os arquivos que ele vai utilizar no processo. Nesse caso, colocamos $arquivos ao final da linha.

Por último, passamos a mensagem do echo dizendo "Compactados com sucesso em $arquivo_saida".

Assim, finalizamos a opção "compactar". Para fechar esse bloco dentro do case, dentro dessa sintaxe, usamos duas vezes ponto e vírgula.

case "$operacao" in
        "compactar")
                read -p "Nome do arquivo final (.tar.gz)" arquivo_saida
                read -p "Lista de arquivos separados por espaço:" arquivos
                tar -czf "$arquivo_saida" $arquivos
                echo "Compactados com sucesso em $arquivo_saida"
        ;;
Copiar código
Agora podemos começar o bloco "descompactar". Começamos com "descompactar", dentro do parêntese. Precisamos observar a indentação do conteúdo dele.

Primeiro, perguntamos para a pessoa usuária qual é o nome do arquivo a ser descompactado, lembrando que a extensão dele é .tar.gz, e salvamos ele na variável arquivo. Agora pedimos para a pessoa usuária informar o diretório de destino e colocamos a variável diretorio.

Em seguida, fazemos a descompactação usando o comando tar com a opção -xzf. A primeira coisa que informamos é o $arquivo que desejamos descompactar e colocamos o -C para indicar que queremos salvar esse arquivo em um diretório de destino ($diretorio). Esse diretório vai estar entre aspas.

Por fim, vamos indentar para a mensagem final echo "Descompactado com sucesso em $diretorio". Fechamos esse bloco da mesma forma, com dois ponto e vírgula.

Para fechar os dois blocos, usamos um asterisco com um parêntese (*)).

        "descompactar")
                read -p "Nome do arquivo a descompactar (.tar.gz)" arquivo
                read -p "Diretorio de destino" diretorio
                tar -xzf "$arquivo" -C "$diretorio"
                echo "Descompactado com sucesso em $diretorio"
        ;;
        *)
Copiar código
Agora vamos exibir algumas mensagens de erro, caso a pessoa usuária não entre com a opção compactar e descompactar ou entre com uma opção incorreta.

Nesse caso, apresentamos na tela o primeiro echo: "Operação inválida!". Abaixo, teremos um segundo echo: "Selecione descompactar ou compactar", que são as opções válidas no nosso contexto.

Por último, teremos a mensagem de erro exit 1, que demarca isso para nós.

Fechamos esse bloco de erro com dois e vírgula também e, por fim, fechamos o case com esac.

read -p "Entre com a operação desejada: 'compactar' ou 'descompactar'" operacao

case "$operacao" in
        "compactar")
                read -p "Nome do arquivo final (.tar.gz)" arquivo_saida
                read -p "Lista de arquivos separados por espaço:" arquivos
                tar -czf "$arquivo_saida" $arquivos
                echo "Compactados com sucesso em $arquivo_saida"
        ;;
        "descompactar")
                read -p "Nome do arquivo a descompactar (.tar.gz)" arquivo
                read -p "Diretorio de destino" diretorio
                tar -xzf "$arquivo" -C "$diretorio"
                echo "Descompactado com sucesso em $diretorio"
        ;;
        *)
        echo "Operacao invalida!"
        echo "Selecione descompactar ou compactar"
        exit 1
esac
Copiar código
Vamos teclar "Ctrl + X" para salvar, nomear o arquivo como compedescomp.sh, e mudar a permissão de execução dele com o comando chmod seguido da opção +x e do nome do arquivo compedescomp.sh.

chmod +x compedescomp.sh
Copiar código
Para testar se funciona, podemos digitar o caminho ./compedescomp.sh.

./compedescomp.sh
Copiar código
Ao fazer isso, surge a pergunta da operação desejada. Supondo que queremos compactar, surge a pergunta do nome do arquivo final; vamos colocar, por exemplo, saida2.tar.gz.

Em seguida, precisamos listar os arquivos separados por espaço. Colocaremos os arquivos que já trabalhamos anteriormente:

/home/lucasrm/texto2.txt /home/lucasrm/texto3.txt
Copiar código
Executando o comando ls, temos os arquivos listados, então o script funciona conforme esperado. Agora vamos usar a função de descompactar e digitar, por exemplo, o arquivo saida2.tar.gz para ser descompactado. O diretório de destino será /home/lucasrm/.

Ao final, teremos a mensagem "Descompactado com sucesso".

Conclusão
Agora que já aprendemos a descompactar arquivos e como criar diferentes tarefas dentro de um único script, que tal estudarmos como configurar um servidor, como instalar um servidor web nesse servidor com o qual temos lidado ao longo da nossa jornada?
