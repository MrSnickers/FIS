require 'bundler'
Bundler.require

require "./lib/compliment.rb"


  class App < Sinatra::Application

    get '/compliments' do
      list = Compliments.new
        @message = list.messages.sample
        @image = list.images.sample

      erb :compliment

    end


end