FROM  ruby:3.0.1

WORKDIR /app

ADD . .

RUN gem sources --add https://gems.ruby-china.com/ --remove https://rubygems.org/
RUN bundle install

ENTRYPOINT [ "bundle",  "exec", rails", "s" ]