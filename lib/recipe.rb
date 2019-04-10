class Recipe
  attr_reader :name,
              :ingredients

  def initialize(name)
    @name = name
    @ingredients = {}
  end

  def add_ingredient(ingredient, quantity)
    @ingredients[ingredient] = quantity
  end

  def check_quantity(ingredient)
    @ingredients[ingredient]
  end

  def total_calories
    total = nil
    @ingredients.each do |ingredient|
      if total == nil
      total = ingredient[0].calories * ingredient[1]
      else
        total += ingredient[0].calories * ingredient[1]
      end
    end
    total
  end

end

# * The recipe should be able to list all of its ingredients.
# * The recipe should be able to check the quantity needed of a given ingredient to make that recipe.
# * The recipe should be able to find the total number of calories in that dish.
