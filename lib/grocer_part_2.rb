require_relative './part_1_solution.rb'
require 'pp'
def apply_coupons(cart, coupons)
  cart_index=0
  coupon_index = 0
  while cart_index<cart.length; 
    while coupon_index<coupons.length
    current_cart = cart[cart_index];
    current_coupon = coupons[coupon_index]
    if current_cart[:item]== current_coupon[:item] && current_cart[:count] >= current_coupon[:num];
        current_cart[:count]-= current_coupon[:num];
        cart.push(:item =>"#{current_cart[:item]} W/COUPON", :price => current_coupon[:cost]/current_coupon[:num], :clearance => current_cart[:clearance], :count => current_coupon[:num])
    end
    coupon_index+=1
    end
  cart_index+=1;
  end
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
