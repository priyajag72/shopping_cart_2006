require 'minitest/autorun'
require 'minitest/nyan_cat'
require './lib/product'
require './lib/shopping_cart'

class ShoppingCartTest < Minitest::Test
  # Iteration 2
  def test_it_exists
    cart = ShoppingCart.new("King Soopers", "30items")
    assert_instance_of ShoppingCart, cart
  end

  def test_it_has_a_name
    cart = ShoppingCart.new("King Soopers", "30items")
    assert_equal "King Soopers", cart.name
  end

  def test_it_has_a_capacity
    cart = ShoppingCart.new("King Soopers", "30items")
    assert_equal 30, cart.capacity
    cart2 = ShoppingCart.new("Randalls", "6ITEMS")
    assert_equal 6, cart2.capacity
  end
end
