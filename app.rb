require './lib/game'
require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions

  # before do
  #   @game = Game.instance
  # end

  get '/choose_weapon' do
    erb :choose_weapon
  end

  post '/result' do
    p params
    user_weapon = params[:user_choice]
    @game = Game.create
    @game.player.choose_weapon(user_weapon)
    # @game.evaluate
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
