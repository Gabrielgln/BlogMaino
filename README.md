# Mainô - Teste Técnico

## 💻 Projeto

 **MainoBlog**
 - [Deploy - Acesse o projeto](https://blogmaino.fly.dev/)

## 🚀 Tecnologias

- Ruby 3.2.2
- Rails 7.1.3
- SQLite3
- Gem: Bcrypt
- Gem: Kaminari
- Gem: I18n
- Deploy ~> Fly.io

## 💥 Funcionalidades

**Requisitos**
- [x] Ver os posts publicados por todos os usuários ordenados do mais novo para o mais antigo
- [x] Os posts publicados devem ter paginação ao atingirem 3 publicações, onde o 4º post irá para a página 2 e daí em diante, ou seja, cada página deverá ter até 3 posts
- [x] Fazer comentários anônimos
- [x] Cadastrar um novo usuário
- [x] Fazer login com um usuário cadastrado
- [x] Recuperar a senha do usuário
- [x] Área logada onde é possível: redigir e publicar um post
- [x] Editar e apagar posts já publicados pelo próprio usuário loggado
- [x] Fazer comentários identificados através do login
- [x] Editar o seu cadastro de usuário
- [x] Alterar a senha do usuário loggado

**Opcionais**
- [x] Escrever testes automatizados simples;
- [x] Implemente internacionalização;
- [x] Adicione tags aos seus post, assim como filtros para utilizar as tags cadastradas. As tags deverão ser implementadas como uma nova tabela no seu modelo, associada aos posts

**SUPER DIFERENCIAL**
- [ ] Crie a possibilidade de upload de arquivo TXT para criação de um ou mais posts, ou criação de múltiplas tags, utilizando Sidekiq para processamento assíncrono.
