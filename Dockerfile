FROM ruby:latest
WORKDIR /var/app/pivotal_agent
RUN git clone https://github.com/fr33z3/newrelic_pivotal_agent.git /var/app/pivotal_agent
COPY ./config/newrelic_plugin.yml ./config/newrelic_plugin.yml
RUN bundle install
CMD ./pivotal_agent
