require "./woodchuck_class.rb"

rand(1..10).times do 
  Woodchuck.new
end

Woodchuck::WOODCHUCKS.each do |woodchuck|
  rand(1..10).times do 
    woodchuck.chuck_wood
  end
end


chuck_total = 0

Woodchuck::WOODCHUCKS.each do |woodchuck|
  chuck_total += woodchuck.chuck_count
end

puts chuck_total