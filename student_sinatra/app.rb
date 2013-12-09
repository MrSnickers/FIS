require 'sinatra/base'

# Why is it a good idea to wrap our App class in a module?
module StudentSite
  class App < Sinatra::Base

    get '/hello-world' do
      one_through_twenty = Array.new(20){|i| i+1}
      @random_numbers = one_through_twenty
      erb :hello
    end


    get '/' do
      "hello world!"
    end

  end
end