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


# # Create a checkout method to calculate the total cost of a cart of items and apply discounts and coupons as necessary.

# def checkout(cart)

# end



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


def total(cart)
  ##this does not work if items in the cart have the same name.  Why is that?
  running_total = 0
  cart.each do |item|
    item.each do |food, value_hash|
    running_total = running_total + (value_hash[:price] * value_hash[:count])
  end
end
return running_total

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

def coupon_check(clearance_cart, coupon_array )
  clearance_cart.each do |cart_item|
    item.each do |food, value_hash|
      coupon_array.each do|coupon|
      if cart_item[food] == coupon[:item]
        if cart_item[value_hash]>= coupon[:num]
          #returns difference b/t regular cost and coupon price
        end
      end

     end
    end
  end

end

# total( [{"AVOCADO" => {:price => 3.00, :clearance => true, :count => 1}}, {"AVOCADO" => {:price => 3.00, :clearance => true, :count => 1}} ])

##the cart is currently an array of individual items, translate it into a hash that includes the counts for each item
  # For example if your cart was [  {"AVOCADO" => {:price => 3.00, :clearance => true}}, {"AVOCADO" => {:price => 3.00, :clearance => true}}]
  # it would become {"AVOCADO" => {:price => 3.00, :clearance => true}, :count => 2}
##create a checkout method that calculates the total cost of the cart
##when checking out, check the coupons and apply the discount if the proper number of items is present
##if any of the items are on clearance add a 20% discount
##if the customer has 2 of the same coupon, triple the discount
##if none of the items purchased have a unit price greater than 5$ give the customer a 10$ discount off the whole cart






