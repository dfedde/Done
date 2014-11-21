require "sinatra"

get '/done/:lab/:name' do
  open('finished', 'a') { |f|
    f.puts "#{params[:name]} finished lab #{params[:lab]} at #{Time.now.strftime("at %I:%M%p")}"
  }
  "thank you, #{params[:name]}"
end
