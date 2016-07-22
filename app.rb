require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(params[:player1], params[:player2])
    @player_1 = $game.players[0]
    @player_2 = $game.players[1]
    redirect '/play'
  end

  get '/play' do
    @player_1 = $game.players[0]
    @player_2 = $game.players[1]
    erb :play
  end

  get '/attack' do
    @player_1 = $game.players[0]
    @player_2 = $game.players[1]
    Game.new(@player_1, @player_2).attack(@player_2)
    $game.switch
    erb :attack
  end

  get '/switch' do
    $game.switch
    redirect "/play"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
