require 'bundler'
Bundler.require

require './lib/roshambo_class.rb'

module Game
  class RPS_App < Sinatra::Application


    get '/' do
        "Hi there!"
    end

    get '/throw' do
        "Let's play a game of rock, paper, scissors!  Go to the url of the move you want to make!"
    end 

    get '/throw/:type' do
        game = Roshambo.new(params[:type])
        game.pick_move
        game.winner
        @user_move = game.opponents_move
        @game_move = game.move
        @winner = game.result

        
        erb :index
    end 

  end
end 