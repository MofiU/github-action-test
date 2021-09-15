FROM  rails

WORKDIR /app

ADD . .

RUN gem sources --add https://gems.ruby-china.com/ --remove https://rubygems.org/
RUN bundle install

ENTRYPOINT [ "rails", "s" ]