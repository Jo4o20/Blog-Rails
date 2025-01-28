FROM ruby:3.3

# Instale dependências necessárias
RUN apt-get update -qq && apt-get install -y \
  build-essential \
  libyaml-dev \
  sqlite3 \
  libsqlite3-dev \
  nodejs

# Configure o diretório de trabalho
WORKDIR /app

# Copie o Gemfile e o Gemfile.lock para o contêiner
COPY Gemfile Gemfile.lock ./

# Instale as gems
RUN bundle install

# Copie o restante do código para o contêiner
COPY . .

# Exponha a porta para o Rails
EXPOSE 3000

# Comando para iniciar o servidor
CMD ["rails", "server", "-b", "0.0.0.0"]