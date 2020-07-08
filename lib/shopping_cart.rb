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
end
