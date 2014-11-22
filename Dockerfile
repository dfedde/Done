FROM ubuntu

RUN apt-get update && \
apt-get install -y ruby

RUN gem install sinatra
RUN gem install sinatra-cross_origin

COPY  app.rb /

RUN touch finished

CMD ["ruby", "app.rb", "/log/file"]

EXPOSE 4567
