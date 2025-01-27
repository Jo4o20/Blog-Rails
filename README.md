# README

## Nome
João Gabriel de Lima Castro

## Link para o Vídeo Tutorial
[Assista ao tutorial no YouTube](https://www.youtube.com/watch?v=X_Hw9P1iZfQ)

## Descrição
Este README documenta os passos necessários para configurar e executar a aplicação.

## Requisitos
- **Ruby Version:** 3.3.7  
- **Rails Version:** 8.0.1  

## Etapas de Configuração

### Instalar Ruby
(https://rubyinstaller.org/)

### Instalar Rails
```bash
gem install rails
```

### 1. Dependências do Sistema
Certifique-se de que todas as dependências do sistema necessárias estão instaladas.
```bash
bundle install
```

### 2. Configuração
Configure os arquivos necessários para rodar o projeto, como `.env` ou `database.yml`.

### 3. Criação do Banco de Dados
Execute os comandos para criar o banco de dados:

```bash
rails db:create
```

### 4. Inicialização do Banco de Dados
Popule o banco de dados com as migrações e os dados iniciais:

```bash
rails db:migrate
rails db:seed
```

### 5. Executando o Servidor
Na pasta do projeto (`./blog`), abra um terminal e execute:

```bash
rails s
```

Após executar, acesse o link mostrado no terminal: [http://localhost:3000/](http://localhost:3000/)

