FROM ruby:3.1.2
RUN apt-get update -qq

# dependencies of rails-erd
RUN \
  apt-get -y dist-upgrade && \
  apt-get -y update && \
  apt-get -y install build-essential && \
  apt-get -y install graphviz

WORKDIR /app
COPY Gemfile ./Gemfile
COPY Gemfile.lock ./Gemfile.lock
RUN bundle install

EXPOSE 3000
# イメージ実行時に起動させる主プロセスを設定
CMD ["rails", "server", "-b", "0.0.0.0"]
