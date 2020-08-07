FROM ruby:2.7

LABEL maintainer="Andy Leak andy@r210.com"

RUN apt-get update && \
    apt-get install -y net-tools

# Install gems
ENV APP_HOME /app
ENV HOME /root
RUN mkdir $APP_HOME
WORKDIR $APP_HOME
COPY Gemfile* $APP_HOME/
RUN bundle install

# Upload source
COPY . $APP_HOME

# Start server
ENV PORT 3090
EXPOSE 3090
CMD ["ruby", "app.rb"]
