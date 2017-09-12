require 'bundler'
Bundler.require

class BirthdayCheck < Sinatra::Application

get '/' do
  if Time.now.strftime("%m").to_i == 10 && Time.now.strftime("%d").to_i == 24
   @result = "Yes"
  else
    @result = "No"
  end
  erb :no
end

  get '/Sterling' do
    "That was tasty cake!"
  end

end