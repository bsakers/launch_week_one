class Container
  attr_reader :weight, :maximum_holding_weight
  attr_accessor :ingredients

  def initialize(weight, maximum_holding_weight)
    @weight = weight
    @maximum_holding_weight = maximum_holding_weight
    @ingredients = []
  end

  def fill_with_ingredient(ingredient)
    count = 0
    current_weight = 0
    while maximum_holding_weight > current_weight do
      @ingredients << ingredient
      current_weight += ingredient.weight
      count += 1
    end
    @weight = @weight + (@ingredients.size * ingredient.weight)
  end

  def which_ingredient
    @ingredients[0].name
  end

  def how_many_ingredients
    @ingredients.size
  end

  def remove_one_ingredient
    @ingredients.pop
  end

  def empty
    count = 0
    while count <= @ingredients.size do
      @ingredients.pop
      count += 1
    end
    @ingredients.size
  end

end
