require 'sinatra/base'

class Battle < Sinatra::Base
  
  enable :sessions 

  get '/' do
    erb :index1
  end

  post '/names' do
    session[:player1] = params[:player1].capitalize
    session[:player2] = params[:player2].capitalize
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb :names
  end

  get '/attack' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb :attack
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end