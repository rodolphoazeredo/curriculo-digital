FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y nodejs
RUN mkdir /curriculo-digital
WORKDIR /curriculo-digital
COPY Gemfile /curriculo-digital/Gemfile
COPY Gemfile.lock /curriculo-digital/Gemfile.lock
RUN bundle install
COPY . /curriculo-digital

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
