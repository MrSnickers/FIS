require 'mysql2'

client = Mysql2::Client.new(:host => "192.168.2.2", :username => "student", :password => "mypass", :database => "wizards")
puts client.query("SELECT * FROM wizards").inspect


# 192.168.2.2.
# student
# mypass
# wizards