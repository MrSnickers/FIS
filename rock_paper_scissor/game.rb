require 'bundler'
Bundler.require

module Game
  class RPS_App < Sinatra::Application

params = {:rock =>"That's a rock!", :paper =>"That's paper!", :scissors=>"That's scissors!" }

    get '/' do
        "Hi there!"
    end

    get '/throw/rock' do
        @result = params[:rock]
        erb :index
    end   

    get '/throw/paper' do
        @result = params[:paper]
        erb :index
    end 

    get '/throw/scissors' do
        @result = params[:scissors]
        erb :index
    end 

  end
end 