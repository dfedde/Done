require "sinatra"
require 'sinatra/cross_origin'

configure do
    enable :cross_origin
end

get '/done/:lab/:name' do
  open('finished', 'a') { |f|
    f.puts "#{params[:name]} finished lab #{params[:lab]} at #{Time.now.strftime("at %I:%M%p")}"
  }
  "thank you, #{params[:name]}"
end
