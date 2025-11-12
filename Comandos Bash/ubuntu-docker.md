Link para o tutorial oficial da Docker adicionado:

---

# 🐋 Como testar o Ubuntu dentro de um contêiner Docker

Para experimentar o **Ubuntu** usando **Docker**, você precisa ter o Docker instalado no seu sistema.
Uma vez instalado, basta baixar a imagem oficial do Ubuntu no **Docker Hub** e executá-la como um contêiner.

---

## 1. Instalar o Docker

Se você **ainda não tem o Docker instalado** no seu sistema Ubuntu, instale o **Docker Engine** seguindo a documentação oficial ou um guia confiável.
O processo geralmente envolve:

* Adicionar a chave GPG oficial do Docker
* Adicionar o repositório oficial
* Instalar o pacote `docker-ce`

👉 **Link útil para testar o Docker:**
[https://www.docker.com/101-tutorial/](https://www.docker.com/101-tutorial/)

---

## 2. Baixar a imagem Docker do Ubuntu

Abra o terminal e execute o comando abaixo para baixar a imagem oficial do Ubuntu:

```bash
docker pull ubuntu
```

Este comando baixa a **imagem mais recente** do Ubuntu do Docker Hub.
Se quiser uma versão específica, adicione a tag correspondente, por exemplo:

```bash
docker pull ubuntu:22.04
```

---

## 3. Executar um contêiner Ubuntu

Depois de baixar a imagem, você pode iniciar um contêiner com:

```bash
docker run -it ubuntu /bin/bash
```

### Explicação dos parâmetros:

* `-i` → mantém o **STDIN** aberto mesmo se não estiver anexado
* `-t` → aloca um **pseudo-TTY**, permitindo uma experiência interativa
* `ubuntu` → nome da imagem a ser usada
* `/bin/bash` → comando que será executado dentro do contêiner (neste caso, o shell Bash)

---

## 4. Interagir com o contêiner Ubuntu

Assim que o contêiner iniciar, o prompt do terminal mudará, indicando que você está dentro dele.
Agora você pode usar comandos do Ubuntu normalmente, como:

```bash
apt update
apt install nano
ls -l
```

---

## 5. Sair do contêiner

Para sair e retornar ao terminal do seu sistema host, basta digitar:

```bash
exit
```

---

✅ **Pronto!**
Agora você pode testar o Ubuntu dentro de um ambiente isolado com Docker — ideal para aprender, testar pacotes ou desenvolver sem alterar o sistema principal.

---

Quer que eu adicione também um exemplo com **montagem de volume** (para salvar alterações fora do contêiner)? Isso tornaria o guia mais completo.
