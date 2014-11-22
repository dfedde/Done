FROM ubuntu

RUN apt-get update && \
apt-get install -y ruby

RUN gem install sinatra
RUN gem install sinatra-cross_origin

COPY  app.rb finished /

RUN ln -s finished /dev/stdout

CMD app.rb /log/file 2>&1 &

EXPOSE 4567
