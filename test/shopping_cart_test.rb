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

  def test_it_can_hold_products
    cart = ShoppingCart.new("King Soopers", "30items")
    cart.products
    assert_equal [], cart.products
  end

  def test_products_can_be_added_to_cart
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')
    cart.add_product(product1)
    cart.add_product(product2)
    assert_equal [product1, product2], cart.products
  end

  def test_cart_has_correct_details
    cart = ShoppingCart.new("King Soopers", "30items")
    bob = cart.details
    assert_equal bob, cart.details
    # require 'pry'; binding.pry
    # [1] pry(#<ShoppingCartTest>)> cart.details
    # => {:name=>"King Soopers", :capacity=>30}
  end

  # ITERATION 3
  def test_how_many_products_are_in_cart
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')
    product3 = Product.new(:paper, 'tissue paper', 1.25, '1')
    cart.add_product(product1)
    cart.add_product(product2)
    cart.add_product(product3)
    # require 'pry'; binding.pry
    assert_equal 13, cart.total_number_of_products
  end

  # def test_if_cart_is_full?
  # cart = ShoppingCart.new("King Soopers", "30items")
  # product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
  # product2 = Product.new(:meat, 'chicken', 4.50, '2')
  # product3 = Product.new(:paper, 'tissue paper', 1.25, '1')
  # # product4 = Product.new(:produce, 'apples', 0.99, '20')
  # cart.add_product(product1)
  # cart.add_product(product2)
  # cart.add_product(product3)
  # # cart.add_product(product4)
  # assert_equal false, cart.is_full?
  # end
end
