require 'minitest/autorun'
require 'minitest/pride'
require './lib/product'
require './lib/shopping_cart'


class ProductTest < Minitest::Test

  def test_it_exists
    cart = ShoppingCart.new("King Soopers", "30items")
    assert_instance_of ShoppingCart, cart
  end

  def test_it_has_a_name
    cart = ShoppingCart.new("King Soopers", "30items")

    assert_equal "King Soopers", cart.name
  end

  def test_it_has_capacity
    cart = ShoppingCart.new("King Soopers", "30items")

    assert_equal 30, cart.capacity
  end

  def test_products_are_empty_when_created
    cart = ShoppingCart.new("King Soopers", "30items")

    assert_equal [], cart.products
  end


end #final
