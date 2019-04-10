require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/recipe'
require 'pry'

class RecipeTest < MiniTest::Test

  def setup
    @chicken = Ingredient.new("chicken", "pound", 100)
    @cream = Ingredient.new("cream", "cup", 120)
    @recipe = Recipe.new("Chicken Alfredo")
  end

  def test_recipe_exists
    assert_instance_of Recipe, @recipe
  end

  def test_recipe_has_name
    assert_equal "Chicken Alfredo", @recipe.name
  end

  def test_recipe_can_add_ingredien
    @recipe.add_ingredient(@chicken, 1)

    expected = {
      @chicken => 1
    }
    assert_equal expected, @recipe.ingredients
  end

  def test_check_quantity_of_ingredient
    @recipe.add_ingredient(@chicken, 1)
    assert_equal 1, @recipe.check_quantity(@chicken)
  end

  def test_lists_all_ingredients
    @recipe.add_ingredient(@chicken, 1)
    @recipe.add_ingredient(@cream, 16)

    expected = {
      @chicken => 1,
      @cream => 16
    }
    assert_equal expected, @recipe.ingredients
  end

  def test_recipe_total_calories
    @recipe.add_ingredient(@chicken, 1)
    @recipe.add_ingredient(@cream, 1)

    assert_equal 220, @recipe.total_calories
  end


end
