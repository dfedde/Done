require "sinatra"
require 'sinatra/cross_origin'

set port: 4567
set bind: '0.0.0.0'
configure do
    enable :cross_origin
end

use Rack::Session::Cookie, :key => 'done.user',
                           :path => '/',
                           :expire_after => 2592000,
                           :secret => 'o93ci49ci38283icrkric040393kidie83kidi303kcxasldeped3'

post '/login' do
  session[:name] = params[:name]
  "thank you for logging in #{session[:name]}"
end

get '/done_with/:lab' do
  open(ARGV[0], 'a') { |f|
    f.puts "#{session[:name]} finished lab #{params[:lab]} at #{Time.now}"
  }
  "Your achievements have been noted #{session[:name]}!"
end
