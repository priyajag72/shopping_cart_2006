class ShoppingCart

  attr_reader :name

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
  end

  def capacity
    @capacity.gsub(/[abcdefghijklmnopqrstuvwxyz]/, '')
    @capacity.to_i
  end
end
