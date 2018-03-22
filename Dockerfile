# This Dockerfile doesn't need to have an entrypoint and a command
# as Bitbucket Pipelines will overwrite it with a bash script.

# From: https://bitbucket.org/spittet/ruby-postgresql

FROM ruby:2.4.2
RUN apt-get update
RUN apt-get install -y postgresql postgresql-contrib
RUN apt-get install sudo

# Install node & yarn
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y yarn

# Install for headless testing
RUN apt-get update && apt-get install -y chromedriver chromium xvfb

RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
