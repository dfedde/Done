FROM ubuntu

RUN apt-get update && \
apt-get install -y ruby

RUN gem install sinatra
RUN gem install sinatra-cross_origin

COPY  app.rb /

RUN touch finished

RUN ln -sf  /dev/stdout finished

CMD app.rb /log/file > /dev/null

EXPOSE 4567
