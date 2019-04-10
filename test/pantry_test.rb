require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/recipe'
require './lib/pantry'
require 'pry'

class PantryTest < MiniTest::Test

  def setup
    @pantry = Pantry.new
    @cheese = Ingredient.new("Cheese", "C", 50)
    @mac = Ingredient.new("Macaroni", "oz", 200)
    @mac_and_cheese = Recipe.new("Mac and Cheese")
  end

  def test_pantry_exists
    assert_instance_of Pantry, @pantry
  end

  def test_pantry_stock
    expected = {}
    assert_equal expected, @pantry.stock
  end

  def test_pantry_stock_check
    @mac_and_cheese.add_ingredient(@cheese, 2)
    @mac_and_cheese.add_ingredient(@mac, 8)
    @pantry.stock_check(@cheese)
    assert_equal 0, @pantry.stock_check(@cheese)
  end

  def test_pantry_restock
    @mac_and_cheese.add_ingredient(@cheese, 2)
    @mac_and_cheese.add_ingredient(@mac, 8)
    @pantry.stock_check(@cheese)
    @pantry.restock(@cheese, 5)
    @pantry.restock(@cheese, 10)
    assert_equal 15, @pantry.stock_check(@cheese)
  end


end
