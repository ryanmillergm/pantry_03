require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require 'pry'

class IngredientTest < MiniTest::Test

  def setup
    @chicken = Ingredient.new("chicken", "pound", 100)
  end

  def test_ingredient_exists
    assert_instance_of Ingredient, @chicken
  end

  def test_ingredient_has_name
    assert_equal "chicken", @chicken.name
  end

  def test_ingredient_has_name
    assert_equal "chicken", @chicken.name
  end

end
 
