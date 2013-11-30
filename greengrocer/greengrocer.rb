##Objectives: 
# Create a checkout method to calculate the total cost of a cart of items and apply discounts and coupons as necessary.

# Dr. Steve Bruhle, your green grocer, isn't ready, but you are!

# ##Skills: 
# any?, all?, none?, each, map/collect

# ##Instructions:
# Code generates a random cart of items and a random set of coupons. Implement a method checkout to calculate total cost of a cart of items and apply discounts and coupons as necessary.

# ##Code:

ITEMS = [  {"AVOCADO" => {:price => 3.00, :clearance => true}},
			{"KALE" => {:price => 3.00,:clearance => false}},
			{"BLACK_BEANS" => {:price => 2.50,:clearance => false}},
			{"ALMONDS" => {:price => 9.00, :clearance => false}},
			{"TEMPEH" => {:price => 3.00,:clearance => true}},
			{"CHEESE" => {:price => 6.50,:clearance => false}},
			{"BEER" => {:price => 13.00, :clearance => false}},
			{"PEANUTBUTTER" => {:price => 3.00,:clearance => true}},
			{"BEETS" => {:price => 2.50,:clearance => false}}]

COUPS = [	{:item=>"AVOCADO", :num=>2, :cost=>5.00},
			{:item=>"BEER", :num=>2, :cost=>20.00},
			{:item=>"CHEESE", :num=>3, :cost=>15.00}]

#randomly generates a cart of items
def generateCart
	cart = []
	rand(20).times do
		cart.push(ITEMS.sample)  
	end
	cart
end


#randomly generates set of coupons
def generateCoups
	coups = []
	rand(2).times do
		coups.push(COUPS.sample)
	end
	coups
end



def condenser(cart)
  condensed_basket =[]
  condensed_hash ={}
  cart.each do |item|
    item.each do |food, info_hash|
      if condensed_hash[food].nil?
        info_hash[:count] =1
        condensed_hash[food] = info_hash
      else
        condensed_hash[food][:count] = condensed_hash[food][:count] + 1
      end
    end
  end
condensed_hash.each_pair do |food, updated_hash|
  condensed_basket << { food => updated_hash}
end
return condensed_basket

end


def clearance(condensed_cart)
condensed_cart.each do |item|
  item.each do |food, value_hash|
    if value_hash[:clearance] == true
      value_hash[:price] = (value_hash[:price] * 0.8).round(2)
    end
  end
end
return condensed_cart
end


def total(cart)
  ##this does not work if items in the cart have the same name.  Why is that?
  running_total = 0
  cart.each do |item|
    item.each do |food, value_hash|
    running_total += (value_hash[:price] * value_hash[:count])
  end
end
return running_total

end


def redeem_coupons(clearance_cart, coupon_array )
  savings = 0
  clearance_cart.each do |item|
    item.each do |food, value_hash|
      unless coupon_array.nil?
        coupon_array.each do|coupon|
          if food == coupon[:item] && value_hash[:count]>= coupon[:num]
          savings +=((coupon[:num] * value_hash[:price]) - coupon[:cost]) if ((coupon[:num] * value_hash[:price]) - coupon[:cost]) > 0
          end
        end
     end
    end
  end
  savings
end

def multiple_coupon_check(coupon_array)
  unique_coupons =coupon_array.uniq!
  unique_coupons.each do |coupon|
    coupon_array.select! {}
end




  count_hash = {}  # this is to keep track of the count corresponding to each item
  uniq_item_list.each do |item|  #for each item on the unique list
    count = cart.select {|hash_items| hash_items == item}.size   #set count = to the size of a select statement
    count_hash[item] = count                                     #on the original cart
  end
  uniq_cart = cart.uniq   #wipe out duplicates in the cart
  
  uniq_cart.each do |item_hash|   #for each item in the unique cart
    item_hash[:count] = count_hash[item_hash]   #add a key :count which has a value pulled from our count_hash
  end
  uniq_cart #return our uniq grocery cart!
end

# def checkout(cart)

# end


##if the customer has 2 of the same coupon, triple the discount
##if none of the items purchased have a unit price greater than 5$ give the customer a 10$ discount off the whole cart






