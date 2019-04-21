require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base
  
  enable :sessions 

  get '/' do
    erb :index1
  end

  post '/names' do

    player1 = Player.new(params[:player1].capitalize)
    player2 = Player.new(params[:player2].capitalize)
    $game = Game.new(player1, player2)

    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :names
  end

  get '/attack' do
    @game = $game
    @game.switch_turns
    @game.attack(@game.current_turn)
    erb :attack
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end