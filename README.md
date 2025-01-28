# README

## Nome
João Gabriel de Lima Castro

## Link para o Vídeo Tutorial
[Assista ao tutorial no YouTube](https://www.youtube.com/watch?v=X_Hw9P1iZfQ)

## Link para o Tutorial do Docker
[Dockerize Your Rails 7 App](https://medium.com/simform-engineering/dockerize-your-rails-7-app-3223cc851129)

## Descrição
Este README documenta os passos necessários para configurar e executar a aplicação.

## Requisitos
- **Ruby Version:** 3.3.7  
- **Rails Version:** 8.0.1  

## Etapas de Configuração

### 1. Instalar Ruby
Siga as instruções para instalar o Ruby em [RubyInstaller](https://rubyinstaller.org/).

### 2. Instalar Rails
Execute o comando abaixo para instalar o Rails:

```bash
gem install rails
```

### 3. Rodando Localmente

#### 3.1. Dependências do Sistema
Certifique-se de que todas as dependências do sistema necessárias estão instaladas:

```bash
bundle install
```

#### 3.2. Configuração
Configure os arquivos necessários para rodar o projeto, como `.env` ou `database.yml`.

#### 3.3. Criação do Banco de Dados
Execute os comandos para criar o banco de dados:

```bash
rails db:create
```

#### 3.4. Inicialização do Banco de Dados
Popule o banco de dados com as migrações e os dados iniciais:

```bash
rails db:migrate
rails db:seed
```

#### 3.5. Executando o Servidor
Na pasta do projeto (`./blog`), abra um terminal e execute:

```bash
rails s
```

Após executar, acesse o link mostrado no terminal: [http://localhost:3000/](http://localhost:3000/)

## Rodando em um Docker

### 4. Criar Docker
As configurações do Dockerfile já foram ajustadas para o projeto. Basta finalizar a construção do Rails Server e executar o comando abaixo na raiz do projeto:

```bash
docker build . -t blog-rails:1
```

### 5. Iniciar o Container Docker
Depois de construir a imagem Docker, inicie o container com o seguinte comando:

```bash
docker run --name container -d -p 3000:3000 blog-rails:1
```

### 6. Acessar o Terminal do Container
Entre no terminal do container Rails e execute os comandos para criar o banco de dados:

```bash
docker exec -it <container> bash
rails db:create
rails db:migrate
```

### 7. Acessar a Aplicação
A página web de posts já deve estar funcionando corretamente. Após executar, acesse o link mostrado no terminal: [http://localhost:3000/](http://localhost:3000/)
