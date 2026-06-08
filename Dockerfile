FROM ruby:3.4-slim

RUN gem install discourse_theme --no-document

WORKDIR /theme

ENTRYPOINT ["discourse_theme"]