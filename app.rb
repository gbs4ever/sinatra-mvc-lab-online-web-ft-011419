require_relative 'config/environment'

class App < Sinatra::Base

get  '/' do 
erb :user_input

end

post '/' do
params[:user_phrase]
PigLatinizer.new
end




end