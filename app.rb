require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions

  get '/choose_weapon' do
    erb :choose_weapon
  end

  post '/result' do
    p params
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
