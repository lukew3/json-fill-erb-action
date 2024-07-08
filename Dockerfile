FROM ruby:3.3.0

COPY main.rb Gemfile /root/

WORKDIR /root/
RUN gem install bundler
RUN bundle install

ENTRYPOINT ["ruby", "/root/main.rb"]
