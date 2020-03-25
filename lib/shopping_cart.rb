
class ShoppingCart


  attr_reader :name, :capacity, :products
  def initialize(name, capacity)
    @name = name
    @capacity = capacity.to_i
    @products = []
  end

  def add_product(product)
    @products << product
  end

  def total_number_of_products
    sum = 0
    @products.each do |product|
      sum += product.quantity
    end
    sum
  end

  def is_full?
    total_number_of_products >= @capacity
  end

  def products_by_category(category)
    products_by_category = @products.group_by do |product|
      product.category
    end
    products_by_category[category]

  end

end
