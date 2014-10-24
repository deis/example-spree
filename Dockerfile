FROM ruby:2.0.0-p576

# install spree dependencies
RUN apt-get update && apt-get install -yq \
    imagemagick \
    nodejs

COPY . /app
WORKDIR /app

RUN bundle install

EXPOSE 3000
CMD rails server
