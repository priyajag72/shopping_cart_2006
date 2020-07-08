require 'minitest/autorun'
require 'minitest/nyan_cat'
require './lib/product'

class ProductTest < Minitest::Test
  #Iteration1
  def test_it_exists
    product = Product.new(:paper, 'toilet paper', 3.70, '10')
    assert_instance_of Product, product
  end

  def test_it_has_a_category
    product = Product.new(:paper, 'toilet paper', 3.70, '10')
    assert_equal :paper, product.category
  end

  def test_it_has_a_name
    product = Product.new(:paper, 'toilet paper', 3.70, '10')
    assert_equal 'toilet paper', product.name
  end

  def test_it_has_a_unit_price
    product = Product.new(:paper, 'toilet paper', 3.70, '10')
    assert_equal 3.70, product.unit_price
  end

  def test_it_has_a_quantity
    product = Product.new(:paper, 'toilet paper', 3.70, '10')
    assert_equal 10, product.quantity
  end

  def test_it_can_get_total_price
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')

    assert_equal 37.0, product1.total_price
    assert_equal 9.0, product2.total_price
  end

  def test_is_hoarded_hard_code_to_false
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')

    assert_equal false, product1.is_hoarded?
    assert_equal false, product2.is_hoarded?
  end

  def test_hoard_method_changes_to_true
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')
    product1.hoard
    assert_equal true, product1.is_hoarded?
    assert_equal false, product2.is_hoarded?
  end
end



# [1] pry(main)> require './lib/product'
# => true
# [2] pry(main)> product = Product.new(:paper, 'toilet paper', 3.70, '10')
# => #<Product:0x00007f8d918fc070
#  @category=:paper,
#  @is_hoarded=false,
#  @name="toilet paper",
#  @quantity=10,
#  @unit_price=3.7>
# [3] pry(main)> product.category
# => :paper
# [4] pry(main)> product.name
# => "toilet paper"
# [5] pry(main)> product.unit_price
# => 3.7
# [6] pry(main)> product.quantity
# => 10
# [7] pry(main)> product.total_price
# => 37.0
# [8] pry(main)> product.is_hoarded?
# => false
# [9] pry(main)> product.hoard
# => true
# [10] pry(main)> product.is_hoarded?
# => true
