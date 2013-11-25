##GREENGROCER SPEC


#Objectives: 
# Create a checkout method to calculate the total cost of a cart of items and apply discounts and coupons as necessary.
# any?, all?, none?, each, map/collect
require './greengrocer.rb'

describe "#condenser" do
  it "takes individual items and translate it into a hash that includes the counts for each item" do
    expect(condenser( [ {"AVOCADO" => {:price => 3.00, :clearance => true} }, {"AVOCADO" => {:price => 3.00, :clearance => true}}] )).to eq( [{"AVOCADO" => {:price => 3.00, :clearance => true, :count => 2}} ])
  end
end

describe "#clearance" do
  it "if any of the items are on clearance add a 20% discount to that item" do
    expect(clearance(  ["AVOCADO" => {:price => 3.00, :clearance => true, :count => 1}, "PEANUTS" => {:price => 3.00, :clearance => false, :count => 1} ])).to eq( ["AVOCADO" => {:price => 2.40, :clearance => true, :count => 1}, "PEANUTS" => {:price => 3.00, :clearance => false, :count => 1} ])
  end
end


describe "#total" do
  it "calculate the total cost of a cart of items" do
    expect(total(  ["AVOCADO" => {:price => 3.00, :clearance => true, :count => 1}, "PEANUTS" => {:price => 3.00, :clearance => false, :count => 1} ])).to eq( 6 )
  end
end

describe "#coupon_check" do
  it "if the customer has a coupon and the required number of named items it applies one coupon if there is a discount" do
    expect(coupon_check(  ["BEER" => {:price => 13.00, :clearance => false, :count => 2}, "CHEESE" => {:price => 6.50, :clearance => false, :count => 1} ], [{:item=>"BEER", :num=>2, :cost=>20.00}, {:item=>"CHEESE", :num=>3, :cost=>15.00}] )).to eq(21.50)

  end
end

describe "#coupon_check" do
  it "if the customer has a coupon and the required number of named items it applies one coupon if there is a discount" do
    expect(coupon_check(  ["BEER" => {:price => 13.00, :clearance => false, :count => 4}, "CHEESE" => {:price => 6.50, :clearance => false, :count => 1} ], [{:item=>"BEER", :num=>2, :cost=>20.00}, {:item=>"CHEESE", :num=>3, :cost=>15.00}] )).to eq(47.50)

  end
end

describe "#coupon_check" do
  it "if the customer has a coupon and the required number of named items it applies one coupon if there is a discount" do
    expect(coupon_check(  ["AVOCADO" => {:price => 2.4, :clearance => true, :count => 2} ], [{:item=>"AVOCADO", :num=>2, :cost=>5.00}, {:item=>"CHEESE", :num=>3, :cost=>15.00}] )).to eq(4.80)

  end
end

# describe "#triple_coupon_check" do
#   it "if the customer has 2 of the same coupon, triple the discount" do
#     expect(triple_coupon_check({:item=>"AVOCADO", :num=>2, :cost=>5.00}))

#   end
end



# #randomly generates set of coupons
# def generateCoups
#   coups = []
#   rand(2).times do
#     coups.push(COUPS.sample)
#   end
#   coups
# end
# # Create a checkout method to calculate the total cost of a cart of items and apply discounts and coupons as necessary.

# def checkout(cart)
  
# end



# ##the cart is currently an array of individual items, translate it into a hash that includes the counts for each item
#   # For example if your cart was [  {"AVOCADO" => {:price => 3.00, :clearance => true}}, {"AVOCADO" => {:price => 3.00, :clearance => true}}]
#   # it would become {"AVOCADO" => {:price => 3.00, :clearance => true}, :count => 2}
# ##create a checkout method that calculates the total cost of the cart
# ##if any of the items are on clearance add a 20% discount
# ##when checking out, check the coupons and apply the discount if the proper number of items is present


# ##if the customer has 2 of the same coupon, triple the discount
# ##if none of the items purchased have a unit price greater than 5$ give the customer a 10$ discount off the whole cart

# # ```
# # ##Reward
# # https://www.youtube.com/watch?v=-RuSCACXmXs





