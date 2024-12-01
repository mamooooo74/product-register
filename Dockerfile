FROM ruby:2.5
RUN apt update && apt install -y \
  build-essential \
  libpq-dev \
  nodejs \
  postgresql-client \
  yarn
WORKDIR /product-register
COPY Gemfile Gemfile.lock  /product-register/
RUN gem install rubygems-update -v 3.0.3 && \
    update_rubygems
RUN bundle install