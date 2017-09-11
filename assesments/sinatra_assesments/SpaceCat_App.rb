require 'bundler'
Bundler.require

require './lib/SpaceCat.rb'


  class App < Sinatra::Application

  set :database, 'sqlite3:///SpaceCats.db'

  get '/SpaceCat/index' do
    @spacecats = SpaceCat.all
    haml :index
  end

  get '/SpaceCat/new' do
    @spacecat = SpaceCat.new
    haml :new
  end

  post '/SpaceCat/index' do
    @spacecat = SpaceCat.new(params[:spacecat])
    haml :index
  end


  get '/SpaceCat/show/[:id]' do
    @spacecat = SpaceCat.find(params[:id])
    haml :show
  end

  end

