class ShoppingCart

  attr_reader :name

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @products = []
  end

  def capacity
    @capacity.gsub(/[abcdefghijklmnopqrstuvwxyz]/, '')
    @capacity.to_i
  end

  def products
    @products
  end

  def add_product(product)
    @products << product
  end

  def details
    details = {
      name: @name,
      capacity: capacity
    }
  end

  def total_number_of_products
    total = 0
    @products.map do |product|
      total += product.quantity
    end
    total
  end

  def is_full?
    if total_number_of_products >= capacity
      true
    else
      false
    end
  end

end
