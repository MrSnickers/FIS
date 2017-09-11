########################
# NYC PIGEON ORGANIZER #
########################
 
# Start with the following collected data on NYC pigeons.
 
pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms .K"],
    :white => ["Queenie", "Andrew", "Ms .K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms .K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms .K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

pigeon_list = {}
pigeon_colors = []
pigeon_data[:gender][:male].each do |individual|
  pigeon_list[individual] ={:gender => "male", :color => [], :lives => "" }
end
pigeon_data[:gender][:female].each do |individual|
  pigeon_list[individual] ={:gender => "female", :color => [], :lives =>"" }
end

pigeon_data[:color].each do |tone, group|
  group.each do |name|
    if pigeon_data[:color][tone].include?(name) 
                    pigeon_list[name][:color] << tone
                  end
                end
              end

pigeon_data[:lives].each do |location, group|
  group.each do |name|
    if pigeon_data[:lives][location].include?(name) 
                    pigeon_list[name][:lives] << location
                  end
                end
              end

              puts pigeon_list



# pigeon_data[:color].each_key do |coloration|
# pigeon_colors<<coloration
# end

# pigeon_colors.each do |tone|
#   pigeon_data[:color][tone].includes?


# pigeon_list.each do |name|
#   pigeon_list[name][:color] = ["something"]
# end

#  pigeon_data[:color][:purple].each do |individual|
# #     pigeon_list[individual][:color]  = 
# #   #puts "#{name} is #{color}"
# end



# Iterate over the hash above collecting each pigeon by name and insert it
# as the key of a new hash where each name holds the attributes for that bird. 
# Your output should match the hash below:
 
# pigeon_list = {
#   "Theo" => {
#     :color => ["purple", "grey"],
#     :gender => "male",
#     :lives => "Subway"
#   },
#   "Peter Jr." => {
#     :color => ["purple", "grey"],
#     :gender => "male",
#     :lives => "Library"
#   },
#   "Lucky" => {
#     :color => ["purple"],
#     :gender => "male",
#     :lives => "City Hall"
#   },
#   "Ms .K" => {
#     :color => ["grey", "white"],
#     :gender => "female",
#     :lives => "Central Park"
#   },
#   "Queenie" => {
#     :color => ["white", "brown"],
#     :gender => "female",
#     :lives => "Subway"
#   },
#   "Andrew" => {
#     :color => ["white"],
#     :gender => "male",
#     :lives => "Central Park"
#   },
#   "Alex" => {
#     :color => ["white", "brown"],
#     :gender => "male",
#     :lives => "Central Park"
#   }
# }