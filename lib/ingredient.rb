class Ingredient
  attr_reader :name,
              :unit,
              :calories,
              :ingredients

  def initialize(name, unit, calories)
    @name = name
    @unit = unit
    @calories = calories
    @ingredients = []
  end
end
