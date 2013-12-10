require 'bundler'
Bundler.require

require './lib/artist_class.rb'
require './lib/song_class.rb'
require './lib/genre_class.rb'
require './lib/parser_class.rb'


module Playlister
  class App < Sinatra::Application

    get '/' do
      "Why, hello there!"
    end

    get '/directory' do
      @my_directory = Parser.new.make_directory("./data")
      @my_artists = Artist.all

      erb :index

    end

  end

end