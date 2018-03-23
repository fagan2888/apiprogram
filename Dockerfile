FROM jekyll/builder

WORKDIR /tmp
ADD Gemfile /tmp/
ADD Gemfile.lock /tmp/
RUN bundle install
