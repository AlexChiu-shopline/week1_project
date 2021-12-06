FROM ruby:2.5.7
RUN apt-get update -yqq
RUN apt-get install -yqq --no-install-recommends git nodejs npm
RUN npm install -g yarn
RUN gem install rails

WORKDIR /shopline/week1
COPY Gemfile* /shopline/week1

RUN bundle install
COPY . /shopline/week1
CMD [ "bin/rails", "s", "-b", "0.0.0.0" ]