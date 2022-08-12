# zenn-app/backend/Dockerfile

# 1. rubyのバージョン指定
FROM ruby:2.6.6

# 2. ?
ENV LANG C.UTF-8
ENV TZ Asia/Tokyo

# 3. ディレ
RUN mkdir /app
WORKDIR /app

# 4. Gemfile追加して、bundle install
ADD Gemfile /app/Gemfile

# 5. apt-get
RUN apt-get update -qq && \
  apt-get install -y build-essential \
  libpq-dev \
  sudo \
  gem install bundler:2.0.1

RUN bundle install
