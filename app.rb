require './lib/game'
require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions

  get '/choose_weapon' do
    erb :choose_weapon
  end

  post '/result' do
    @game = Game.create
    @game.player.choose_weapon(params[:user_choice])
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
