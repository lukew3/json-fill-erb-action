FROM ruby:2.7.0

COPY \
    main.rb \
    Gemfile \
    /root/

RUN gem install bundler
RUN bundle install
RUN ruby /root/main.rb ${1} ${2} ${3}
