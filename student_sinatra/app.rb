require 'sinatra/base'
require './lib/thing_class.rb'

# Why is it a good idea to wrap our App class in a module?
module StudentSite
  class App < Sinatra::Base

    get '/hello-world' do
      one_through_twenty = Array.new(20){|i| i+1}
      @random_numbers = one_through_twenty
      @thing = Thing.new("Ashley", 6)
      erb :hello
    end

    get '/artists' do
      @artist_array = ["Billy Collins", "Patti Smith"]
      erb :artists
    end


    get '/' do
      "hello world!"
    end

  end
end