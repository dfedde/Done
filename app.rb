require "sinatra"
require 'sinatra/cross_origin'
set port: 4567
set bind: '0.0.0.0'
configure do
    enable :cross_origin
end

get '/done/:lab/:name' do
  open('finished', 'a') { |f|
    f.puts "#{params[:name]} finished lab #{params[:lab]} at #{Time.now.strftime("at %I:%M%p")}"
  }
  "thank you, #{params[:name]}"
end
