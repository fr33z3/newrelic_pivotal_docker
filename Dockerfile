FROM ruby:latest
WORKDIR /var/app/pivotal
COPY . ./
RUN bundle install
CMD ./pivotal_agent
