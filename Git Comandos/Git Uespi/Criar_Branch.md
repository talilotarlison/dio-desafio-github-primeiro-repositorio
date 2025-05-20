O conteúdo formatado em **Markdown**, ideal para ser usado em documentação, README ou posts técnicos:

---

# 🛠️ Como Criar e Gerenciar Branches no Git pela Linha de Comando

## 📌 Criar uma nova branch

### A partir da branch atual:

```bash
git branch NovaBranch
```

### A partir de uma branch específica:

```bash
git branch NovaBranch branchEspecifica
```

> ⚠️ Corrigido: O comando correto é `git branch NovaBranch branchEspecifica`, **não** `-c`.

## 🔁 Trocar para a branch criada

```bash
git checkout NovaBranch
```

## ✅ Commit e Push das alterações

```bash
git commit -m "feat: descrição da feature aqui"
git push -u origin NovaBranch
```

---

## 💡 Dicas adicionais

### Criar e mudar para a branch ao mesmo tempo:

```bash
git checkout -b novaBranch
```

### Criar a branch a partir de outra (não necessariamente a atual):

```bash
git checkout -b novaBranch branch_existente
```

---

## 🆕 A partir do Git 2.23.0 (2019), você pode usar `switch`:

### Criar a branch e mudar para ela:

```bash
git switch -c novaBranch
```

### Criar a branch a partir de outra e mudar para ela:

```bash
git switch -c novaBranch branch_existente
```

---

## ✏️ Renomear uma branch no Git

### Renomear branch local:

```bash
git branch -m novo-nome
# ou
git branch -m nome-antigo novo-nome
```

### Excluir branch antiga do repositório remoto:

```bash
git push origin --delete nome-antigo
```

### Enviar o novo branch para o repositório remoto:

```bash
git push origin novo-nome
```

### Redefinir o upstream (ligação entre local e remoto):

```bash
git push --set-upstream origin novo-nome
```

---

📢 **Fonte:** Bugadoz.dev
🔧 Contribuidores: MezzoDio, kht

---

Se quiser que eu gere um PDF ou um arquivo `.md` com esse conteúdo, posso fazer isso também!
https://www.tabnews.com.br/elucas/como-criar-uma-branch-no-git-com-a-linha-de-comando
