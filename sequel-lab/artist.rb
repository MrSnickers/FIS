##artist.rb

require 'sequel'

DB = Sequel.connect('sqlite://artists.db')

class Artist < Sequel::Model

end