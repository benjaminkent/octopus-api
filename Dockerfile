FROM ruby:2.6.1-alpine
RUN apk add --no-cache --update build-base nodejs postgresql-dev bash tzdata
RUN mkdir /octopus-api
WORKDIR /octopus-api
COPY Gemfile /octopus-api/Gemfile
COPY Gemfile.lock /octopus-api/Gemfile.lock
RUN bundle install
COPY . /octopus-api

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]