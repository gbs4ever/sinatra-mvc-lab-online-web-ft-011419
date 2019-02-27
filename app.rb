require_relative 'config/environment'

class App < Sinatra::Base

get  '/' do 
erb :user_input

end

post '/piglatinize' do
pl=params[:user_phrase]
s=PigLatinizer.new

@piglatin = s.piglatinize(pl)    
erb :result
end




end