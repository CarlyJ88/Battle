require 'sinatra/base'
require_relative 'lib/player'

class Battle < Sinatra::Base
  
  enable :sessions 

  get '/' do
    erb :index1
  end

  post '/names' do
    $player1 = Player.new(params[:player1].capitalize)
    $player2 = Player.new(params[:player2].capitalize)
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1.name
    @player2 = $player2.name
    erb :names
  end

  get '/attack' do
    @player1 = $player1.name
    @player2 = $player2.name
    erb :attack
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end