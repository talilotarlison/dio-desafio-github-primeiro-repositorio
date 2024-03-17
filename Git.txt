Curso Git Alura

O comando git init deve ser utilizado para converter um diretório existente no computador, que geralmente é o diretório de algum projeto, em um repositório Git. No entanto, seu uso requer atenção e cuidado para evitar problemas indesejados. Vamos entender melhor o que o comando git init faz.
O que é o comando git init?
Para que possamos realizar o controle de versão de um projeto, registrando as mudanças realizadas nele ao longo do tempo, devemos, primeiramente, transformar o diretório do projeto em um repositório Git. O comando git init é utilizado para esse objetivo, devendo ser executado apenas uma vez. Quando executado, ele configura o diretório atual para ser rastreado pelo Git, inicializando um repositório vazio.

Repare na imagem anterior que o comando git init foi executado no terminal do VSCode. Observe também que no terminal é indicado qual o diretório no qual o comando foi executado, que no exemplo foi em: ~/Projetos/alura/meu-projeto. É importante se atentar a isso, pois o comando git init transforma o diretório atual em um repositório do Git, logo ele deve ser executado dentro do diretório do projeto e não em outros diretórios do computador.

Ao executar o comando, note que a saída no terminal foi a mensagem Initialized empty Git repository in /home/rodrigo/Projetos/alura/meu-projeto/.git/. Essa mensagem indica que o comando foi executado corretamente e um repositório local do Git foi criado com sucesso nesse diretório. A partir desse ponto, já podemos trabalhar no projeto, adicionando arquivos, realizando modificações e registrando as mudanças no Git.

Cuidados com o comando git init
Aprendemos que o comando git init serve para criar um novo repositório Git e por isso deve ser executado apenas uma única vez. Ou seja, se um diretório já for um repositório Git, não faz sentido rodar novamente o comando git init. Esse é um erro bastante comum de ser cometido.

Se você executar o comando git init em um diretório que já foi inicializado como um repositório Git, a seguinte mensagem será exibida:

Reinitialized existing Git repository in /home/rodrigo/Projetos/alura/meu-projeto/.git/
COPIAR CÓDIGO
Isso indica que o Git reinicializou um repositório já existente, ou seja, o comando git init foi executado em um diretório que já era um repositório Git.

Caso você tenha cometido esse equívoco, não precisa se preocupar, pois todo o histórico de mudanças e commits no projeto não será apagado. O Git detecta que o diretório já era um repositório Git e com isso o comando não tem efeito nenhum.

Na dúvida, antes de executar o comando git init, execute primeiramente o comando git status. Se aparecer a mensagem fatal: not a git repository (or any of the parent directories): .git, isso significa que o diretório atual não é um repositório Git e você pode então executar o comando git init.


ssh-keygen -t ed25519 -C "rodrigo.alura87@gmail.com" -> criar chave ssh

git add . - > adicionando todos arquivos

git push -u origin main -> enviar os arquivos para github

Vimos no vídeo anterior que para fazer o link entre o repositório local, que está em nosso computador, com o repositório remoto, que está no GitHub, devemos utilizar o comando git remote.

Esse comando tem algumas variações e parâmetros opcionais que podem ser úteis em certas situações. Confira a seguir exemplos de uso desse comando:

1 - Adicionar um repositório remoto:

Quando você deseja estabelecer uma conexão entre seu repositório local e um repositório remoto, como aquele hospedado no GitHub, o comando git remote add é a ferramenta essencial. Essa etapa é crucial para possibilitar a colaboração e o compartilhamento de código com outras pessoas, bem como para fazer backup de seu trabalho em um servidor remoto.

A sintaxe básica do comando é a seguinte:

git remote add apelido url
COPIAR CÓDIGO
'apelido': Este é um nome que você atribui ao repositório remoto. Geralmente, se utiliza nomes descritivos, como "origin" para o repositório principal no GitHub, mas você pode escolher nomes que façam sentido para o seu projeto.

'url': Aqui, você insere a URL do repositório remoto. Esta URL é única para cada repositório remoto e serve como o endereço para acessar e interagir com ele pela internet. Certifique-se de copiar a URL correta do repositório que deseja adicionar.

2 - Listar os repositórios remotos:

Para listar os repositórios remotos associados ao seu projeto local, você pode utilizar o comando git remote -v. Isso exibirá uma lista de todos os repositórios remotos vinculados ao seu projeto, juntamente com suas URLs. Veja um exemplo:

git remote -v
COPIAR CÓDIGO
A saída será algo semelhante a:

origin   https://github.com/seu-usuario/seu-projeto.git (fetch)
origin   https://github.com/seu-usuario/seu-projeto.git (push)
COPIAR CÓDIGO
Essa lista é útil para verificar se os repositórios remotos estão configurados corretamente. Obs: Vai aparecer duplicado mesmo, pois o Git separa a url de envio de commits (push) da url de baixar commits (fetch).

3 - Remover um repositório remoto:

Caso você não precise mais de um repositório remoto específico, pode removê-lo com o comando git remote remove apelido. Substitua 'apelido' pelo nome do repositório remoto que deseja remover. Aqui está um exemplo:

git remote remove origin
COPIAR CÓDIGO
Após a execução deste comando, o repositório remoto chamado "origin" será desvinculado do seu projeto local.

4 - Alterar a URL de um repositório remoto:

Às vezes, é necessário atualizar a URL de um repositório remoto, como quando a URL do servidor do GitHub é modificada ou quando você copiou a URL incorreta ao adicionar o repositório remoto. Use o comando git remote set-url apelido nova_url para realizar essa atualização. Substitua 'apelido' pelo nome do repositório remoto e 'nova_url' pela nova URL que você deseja associar a ele. Aqui está um exemplo:

git remote set-url origin https://github.com/seu-usuario/seu-repositorio.git
COPIAR CÓDIGO
Isso atualizará a URL do repositório remoto "origin" para a nova URL especificada.

5 - Alterar o apelido de um repositório remoto:

Se você deseja renomear um repositório remoto, use o comando git remote rename apelido novo_apelido. Substitua 'apelido' pelo nome atual do repositório remoto e 'novo_apelido' pelo novo nome que você deseja atribuir a ele. Aqui está um exemplo:

git remote rename origin novo-origin
COPIAR CÓDIGO
Isso renomeará o repositório remoto de "origin" para "novo-origin".

Lembre-se de que o comando git remote é fundamental para a gestão de conexões entre seu repositório local e repositórios remotos, permitindo a colaboração eficiente e o controle de versão. Praticar esses comandos em seu ambiente de desenvolvimento ajudará a consolidar seu entendimento.
Você precisará criar um repositório no GitHub e executar os comandos do git no terminal do projeto em seu computador:

git init
git add .
git commit -m "projeto inicial"
git remote add origin git@github.com:SEU_USUARIO/SEU_REPOSITORIO
git push origin main
COPIAR CÓDIGO
Lembre-se de substituir SEU_USUARIO pelo seu username definido ao criar a sua conta no GitHub e SEU_REPOSITORIO pelo nome do repositório que você criou no GitHub.

Nessa aula, você aprendeu como:
Criar sua conta no GitHub para poder compartilhar seus projetos de software e/ou colaborar em projetos de outras pessoas;

Baixar e instalar o Git em seu computador;

Configurar sua conta do Git em seu computador, com os comandos git config –global user.name e git config –global user.email;

Criar um repositório remoto no GitHub;

Criar e conectar seu repositório local com o repositório remoto por meio dos comandos git init, git add, git commit, git remote add e git push.


Aprendemos como utilizar o comando git reset com a opção --hard, que define o modo como o reset será realizado. Entretanto, essa não é a única forma de uso desse comando.

https://git-scm.com/docs/git-revert

Você pode encontrar as outras opções do comando git reset na documentação oficial do git.

Nessa aula, exploramos como é possível alterar o histórico de commits no Git, mas é fundamental exercer cautela ao realizar tais mudanças. Como diz o ditado, "com grandes poderes vêm grandes responsabilidades".

É importante destacar que os comandos do Git que permitem modificar o histórico de commits devem ser utilizados com prudência e apenas quando o commit em questão ainda não foi enviado ao repositório remoto, ou seja, quando ele existe apenas no seu repositório local.

Modificar um commit que já se tornou público, ou seja, aquele que já foi enviado ao GitHub ou a qualquer outro repositório remoto, pode acarretar problemas consideráveis na colaboração com as outras pessoas e na integridade do histórico de um projeto.

Em situações de colaboração em equipe, é essencial manter a integridade do histórico de commits, pois qualquer modificação em um commit que outras pessoas estejam trabalhando pode resultar em conflitos e dificuldades na colaboração.

É recomendável evitar a modificação excessiva do histórico de commits, uma vez que isso pode tornar o histórico confuso. O histórico deve ser uma representação precisa do progresso do projeto ao longo do tempo.


----------------------------------------------------------------
fonte : https://blog.somostera.com/desenvolvimento-web/comandos-git


O que é git?
O git é um sistema de controle de versão de códigos. Gerencia ramificações feitas por diferentes pessoas de um time de modo a manter a ordem e integração de todas as partes. Ou seja, mesmo que várias pessoas estejam trabalhando em um programa ao mesmo tempo, ainda é possível controlar as mudanças para evitar erros.

Sem um controle de versionamento, como o que o git propõe, pode haver o risco de pessoas acessarem diferentes versões e suas mudanças sumirem por conta da desorganização. 

Além disso, o git é um sistema que permite rastrear alterações e manter um histórico dessas alterações para possibilitar voltar a uma versão estável sempre que ocorrer um problema. Ou seja, caso algum erro quebre o sistema em desenvolvimento, é viável voltar para a versão funcional saudável.

Em complemento ao que falamos, o git ajuda também na transparência e no controle das mudanças feitas. Viabiliza o conhecimento sobre quem fez o quê e a frequência dessas modificações.

Para prosseguirmos, no entanto, é importante destacar a diferença do git para o github. O github é uma plataforma de gestão de códigos que se baseia no git e adiciona um fator social, de compartilhamento e interação interpessoal. O hub é crucial para a gestão de projetos, pois ajuda a visualizar as responsabilidades e as entregas, com um controle de prazos e de detalhes.

O hub é um site aberto para todos. Então, é comum que pessoas colaborem com projetos de outras pessoas dev que nem conhecem, de outros estados ou países. Projetos open-source são disponibilizados lá e podem ser alterados por qualquer pessoa desenvolvedora. Isso só reforça o aspecto comunitário e colaborativo da área de programação. 

Ou seja, enquanto o git é o sistema por trás, que cuida dos códigos e comandos e gerencia as ramificações, o hub é a plataforma onde se postam os códigos. 

O github é uma das plataformas baseadas no git, inclusive. Existem várias outras que tentam implementar as mesmas funções e nelas se usam os mesmos comandos git. Alguns exemplos delas: GitLab e Apache Allura. 

Clique aqui para conhecer a Plataforma Tera para aprender novas habilidades no seu ritmo nas áreas de Produto, Negócios, Liderança, Design, Dados, Inteligência Artificial, Marketing e Tecnologia
Quais são os comandos git que você precisa saber?
Então, vamos mencionar e desenvolver os principais comandos git que você precisa conhecer para gerenciar seus projetos, seja no github, seja em outras plataformas. 

Para executar esses comandos git, basta abrir o prompt de comando ou CMD no seu computador. Usaremos o github como exemplo de repositório.

1. git commit
O commit é um comando importantíssimo. Ele leva as mudanças de um ambiente local para o repositório no git, permitindo ainda a inserção de uma mensagem descritiva. Assim, a cada mudança ou finalização de uma tarefa, a pessoa desenvolvedora pode submeter seus feitos e deixar claro para as outras pessoas o que ela fez. 

commit

Fonte: Towards Data Science

2. git add
Um comando muito similar ao “commit” e que trabalha com ele é o “add”. Com essa palavra-chave, nós preparamos arquivos para o próximo “commit”, ou seja, para subir para o repositório na web. É possível adicionar um único arquivo ou todos os arquivos modificados de uma única vez.

Para um único arquivo, use “git add nome_do_arquivo”. Para preparar todos os arquivos para atualização (incluindo as exclusões), use “git add -A”. Para preparar somente as adições, use “git add .”

3. git init
O init é o primeiro dos comandos git que se usa para começar um repositório. Isto é, o que ele faz é transformar uma pasta com códigos no seu HD em uma pasta monitorada pelo git, que será carregada para a plataforma e estará visível para outras pessoas. Ou então cria um repositório novo, do zero. Exemplo: “git init”

4. git clone
Para começar, muitas pessoas optam por uma alternativa ao init: o git clone. A partir dele, você clona um código de um repositório para a sua máquina para então começar a trabalhar nele. Pode ser um projeto de uma pessoa da sua empresa, um projeto de colegas da faculdade ou até mesmo uma aplicação open-source para a qual você julgou interessante colaborar.

clone

Fonte: Comandos Git

5. git status
Para saber algumas informações sobre a ramificação na qual você está trabalhando agora, use o “status”. Esse comando esclarece quais arquivos foram alterados e faz uma comparação com relação à ramificação principal. Exemplo: “git status”

6. git branch
Aliás, falando em ramificações, precisamos falar logo sobre o termo branch. Para trabalhar em equipe, você pode criar diferentes branches, e o git administra todas elas em paralelo para evitar problemas de versão. Então, posteriormente, com um comando que veremos, é possível unificar as ramificações.

O comando “git branch” cria novas branches. Mas também pode funcionar como uma forma de verificar as ramificações já existentes. 

Depois de criar uma, você precisa de um “push” para subir essa ramificação. Assim:

“git push -u <remote> <nome-da-branch>”.

Por sua vez, para deletar uma branch, use:

git branch -d <nome-da-branch>

7. git merge
Depois de programar em uma branch, você tem que fazer uma conjunção dela com outras para de fato subir as alterações. É só colocar o nome da branch que desejamos mesclar com a principal depois do termo merge.

merge

Fonte: Towards Data Science

8. git checkout
Para fazer o merge corretamente, é preciso olhar esse outro comando, o checkout. O objetivo dele é fazer a pessoa programadora mudar de branch. Você pode usar o “git branch” para saber quais existem e depois trocar de uma para outra. 

É importante destacar que é preciso fazer um checkout para a master branch quando queremos captar as mudanças de outra ramificação.

checkout 

Fonte: Towards Data Science

9. git revert
O revert é um dos comandos git aplicados para garantir a segurança dos nossos projetos. Permite desfazer algum commit e recuperar uma versão saudável, seja localmente, seja remotamente. 

Para usá-lo, é preciso primeiro executar um “git log -- oneline” para obter o número do hash. Com o hash, então, é possível digitar: “git revert 'nº do hash'”.

10. git rm
O git rm é um comando muito útil para remover arquivos do git e parar de monitorá-los, ou seja, de associá-los ao repositório. 

rm

Fonte: Comandos Git

11. git pull
Antes de começar a programar em algum repositório, é bom também executar um “pull”. Esse comando traz para a sua máquina todas as mudanças que foram realizadas na plataforma. Ou seja, é uma forma de atualizar a sua versão da aplicação com o que foi alterado remotamente.

pull

Fonte: Comandos Git

12. git stash
O stash serve para criar uma pilha de alterações que serão enviadas posteriormente para o repositório. É uma boa forma de guardar algumas mudanças em espera enquanto você muda de branch para trabalhar em outros aspectos do sistema. É ideal para sistemas grandes, com muitas ramificações que demandam essa flexibilidade da pessoa programadora. Exemplo: “git stash”

13. git config
O config é um comando inicial para vincular o trabalho no repositório com sua conta no github. Assim, é configurado com o nome e com o e-mail. 

config

Fonte: Comandos Git

14. git reset
O reset é outra forma de voltar ao último estado saudável do seu sistema, uma alternativa ao revert. Funciona assim: “git reset --hard HEAD~1”.

15. git push
O push serve para subir as alterações de uma ramificação para um certo repositório. Ele entrega todos os commits e a mensagem. Exemplo: “git push”

push

Fonte: Towards Data Science

Por que usar o git?
Agora, vamos examinar alguns motivos pelos quais toda pessoa profissional de tecnologia deve usar o git, independentemente se sua área é desenvolvimento web, ciência de dados ou outra. 

Documentação
Um dos pontos é a documentação, uma prática fundamental no universo de TI. O ato de documentar sistemas é importante para torná-los transparentes e fáceis de entender para outras pessoas. Se uma pessoa trabalha em uma empresa e documenta bem seus projetos, outras pessoas têm fácil acesso e conseguem prosseguir com o trabalho, mesmo sem ter contato direto com a equipe.

Ou seja, a documentação favorece a comunicação e deve ser encorajada. Com as ferramentas que implementam o git, como o github, você dispõe de uma plataforma para hospedar o código, criar arquivos de explicação/tutorial, comentar os códigos e as alterações e criar diversas informações úteis para quem for ler depois. 

Ou seja, é possível pensar na continuação e na manutenção de uma aplicação de forma segura e precisa.

Redução no tempo de deploy
Outro motivo para considerar o uso de um sistema de versão como o git é a redução do tempo de deploy e simplificação desse processo. Atualmente, diversas demandas em TI fazem com que as pessoas tenham que atualizar os sistemas rápida e constantemente, de forma integrada, como os ideais de DevOps e MLOps. 

Assim, ter um deploy rápido e eficiente é necessário. O git ajuda nessa questão oferecendo às pessoas profissionais a capacidade de subir alterações com facilidade, controlando as ramificações, como já vimos. 

Exibição do seu trabalho
Para as pessoas que aspiram por boas oportunidades de emprego e até para as que buscam melhorias na carreira, o git e as plataformas que utilizam o git são essenciais. Elas permitem mostrar o seu trabalho, os seus projetos, a frequência de codificação, as suas soluções e a sua organização como pessoa desenvolvedora. 

Desse modo, você consegue mostrar na prática para pessoas recrutadoras o que sabe fazer e pode se destacar até mesmo sem diploma em muitos casos.

Colaboração com outros projetos
Outra vantagem que ilustra o porquê de usar o git é a possibilidade de colaborar com projetos diversos. Você pode se engajar em desafios e na busca de soluções para problemas variados, de acordo com sua área de expertise. Isso ficará registrado no perfil para ser mostrado em entrevistas de emprego, como falamos. Ademais, também é uma chance de evoluir na carreira na prática. 

Diversos arquivos de grandes empresas estão disponíveis no github, por exemplo. Isso é bom para entender essas aplicações, estudá-las e até cooperar com elas. Exemplos: os frameworks AngularJS e bootstrap, a linguagem Ruby on Rails, etc. 

Facilidade de usar 
Outro ponto é a facilidade de manipular o sistema, com o auxílio dos comandos git. Trata-se de um sistema de controle de versão que se destaca por ser intuitivo, como demonstramos com os comandos neste artigo. Com alguns comandos simples, você consegue configurar seu repositório, clonar um repositório, deletar arquivos, parar de monitorar arquivos, mudar de branch, etc. 

Guias como este ajudam você a evoluir no domínio do sistema. Assim, as pessoas estudantes podem começar rapidamente e obter bons resultados com as plataformas como o github.