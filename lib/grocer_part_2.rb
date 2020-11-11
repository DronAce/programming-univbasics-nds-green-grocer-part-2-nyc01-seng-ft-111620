require_relative './part_1_solution.rb'
require "pry"

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  cart_with_coupons = []
  hash_cart = {}
  cart.each do |items|
    coupons.each do |coupon|
      name = coupon[:item]
      quantity = items[:count]
      counter = 0
      cost = (coupon[:cost] / coupon[:num]).round(2)
      if items[:item] == name && items[:count] / coupon[:num] >= 1
        hash_cart = items
        hash_cart[:item] = "#{name} W/COUPON"
        hash_cart[:count] = items[:count] - (items[:count] % coupon[:num])
        hash_cart[:price] = cost
        cart_with_coupons << hash_cart
      else
        hash_cart = items
        cart_with_coupons << hash_cart
      end
    end
  end
  cart_with_coupons
  # coupons_index = 0
  #
  # while coupons_index < coupons.size do
  #   current_coupon = coupons[coupons_index]
  #   applicable_for_discount = find_item_by_name_in_collection( current_coupon[:item], cart )
  #     if ( applicable_for_discount[:count] / current_coupon[:num] >= 1 )
  #       cart.push( {:item => "#{current_coupon[:item]} W/COUPON",
  #                   :price => (current_coupon[:cost] / current_coupon[:num]).round(2),
  #                   :clearance => applicable_for_discount[:clearance],
  #                   :count => applicable_for_discount[:count] - ( applicable_for_discount[:count] % current_coupon[:num])})
  #
  #       applicable_for_discount[:count] %= current_coupon[:num]
  #     end
  #   coupons_index += 1
  # end
  # cart

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
