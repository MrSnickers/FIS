# <!-- # Apple Picker

# ## Instructions

# Create a method, `apple_picker`, that will pick all the apples out of an array. Implement this only using `each`.

# ```ruby
# apple_picker(["apple", "orange", "apple"]) #=> ["apple", "apple"]
# ```

def apple_picker(array)
  apples_only = []
  array.each do |fruit|
    apples_only << fruit if fruit.downcase == "apple"
  end
  apples_only
end
# basket = (["apple", "orange", "apple"])
puts apple_picker(["apple", "orange", "apple"])


# ## Challenge
# Implement it with `collect` and then implement it with `select`. Write a sentence about how `select` differs from `collect`.



# # Holiday Suppliers

# You have a bunch of decorations for various holidays organized by season.

# ```ruby
holiday_supplies = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :fourth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}
# ```
## Questions

# 1. How would you access the second supply for the forth_of_july?
# ex: `holiday_supplies[:spring][:memorial_day][0]`
holiday_supplies[:summer][:fourth_of_july][1]

# 2. Add a supply to a Winter holiday.
holiday_supplies[:winter][:new_years]<< "Asprin"

# 3. Add a supply to memorial day.
holiday_supplies[:spring][:memorial_day]<<"sunscreen"

# 4. Add a new holiday to any season with supplies.
holiday_supplies[:spring][:orchid_festival] = ["camera", "Benadryl"]

# 5. Write a method to collect all Winter supplies from all the winter holidays.
# ex: `winter_suppliers(holiday_supplies) #=> ["Lights", "Wreath", etc]`
def winter_gear(holiday_supplies)
all_winter_gear = []
holiday_supplies[:winter].each_pair do |holiday, gear|
gear.each do |supply|
  all_winter_gear << supply
end
end
all_winter_gear.join(", ")
return all_winter_gear
end

puts winter_gear(holiday_supplies)


# 6. Write a loop to list out all the supplies you have for each holiday and the season.
holiday_supplies.each_pair do |season, holiday|
  puts "\n" + season.to_s + ": "
  holiday_supplies[season].each_pair do |holiday, supply|
    print " " + holiday.to_s.capitalize + ": "
    holiday_supplies[season][holiday].each do |supply|
      print " " + supply.to_s
    end
  end
end

# Output:
# ```
# Winter:
#   Christmas: Lights and Wreath
#   New Years: Party Hats
# ```

# 7. Write a method to collect all holidays with BBQ.
def holidays_with_bbq(holiday_supplies)
contains_BBQ = []
holiday_supplies.each do |season, holidays|
  holidays.each_pair do |day, supplies|
    supplies.each do |item|
   if item == "BBQ" 
      contains_BBQ << day
    end
  end
end
end
return contains_BBQ
end
puts holidays_with_bbq(holiday_supplies)


# # `holidays_with_bbqs(holiday_supplies) #=> [:fourth_of_july, :memorial_day]`
# #  -->








