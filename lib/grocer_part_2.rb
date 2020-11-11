require_relative './part_1_solution.rb'
require "pry"

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  # cart_with_coupons = []
  # hash_cart = {}
  # cart.each do |items|
  #   coupons.each do |coupon|
  #     name = coupon[:item]
  #     quantity = items[:count]]
  #     counter = 0
  #     cost = coupon[:cost] / coupon[:num]
  #     if items[:item] == name && quantity > coupon[:num]
  #       while items[:item] == name && items[:count] >= coupon[:num] do
  #         items[:count] -= coupon[:num]
  #         counter += 1
  #         hash_cart = items
  #         hash_cart[:item] = "#{name} W/COUPON"
  #         hash_cart[:count] = coupon[:num] * counter
  #         hash_cart[:price] = cost
  #         cart_with_coupons << hash_cart
  #       end
  #       while quantity > coupon[:num] do
  #         quantity = quantity - coupon[:num]
  #       end
  #       hash_cart = items
  #       hash_cart[:count] = quantity
  #       cart_with_coupons << hash_cart
  #       binding.pry
  #     end
  #
  #   end
  # end
  # cart_with_coupons
  coupons_index = 0

  while coupons_index < coupons.size do
    current_coupon = coupons[coupons_index]
    applicable_for_discount = find_item_by_name_in_collection( current_coupon[:item], cart )
      if ( applicable_for_discount[:count] / current_coupon[:num] >= 1 )
        cart.push( {:item => "#{current_coupon[:item]} W/COUPON",
                    :price => (current_coupon[:cost] / current_coupon[:num]).round(2),
                    :count => applicable_for_discount[:count] - ( applicable_for_discount[:count] % current_coupon[:num])})

        applicable_for_discount[:count] %= current_coupon[:num]
      end
    coupons_index += 1
  end
  cart

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
