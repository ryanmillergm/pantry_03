class Pantry
  attr_reader :stock

  def initialize
    @stock = {}
  end

  def stock_check(ingredient)
    # @stock[ingredient] = 0 unless @stock[ingredient]
    # binding.pry
  end

  def restock(ingredient, quantity)
    @stock[ingredient] = 0 unless @stock[ingredient]
    @stock[ingredient] + quantity
    binding.pry
  end

end
