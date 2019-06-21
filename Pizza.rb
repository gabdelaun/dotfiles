class Pizza

attr_reader :name, :ingredients

#CONSTANT:
VALID_INGREDIENTS = [{name: "dough", calories: 300},
                     {name: "tomato sauce", calories: 100},
                     {name: "cheese", calories: 150},
                     {name: "Peperonni", calories: 75},
                     {name: "olives", calories: 65}]

  def initialize(name)
    @name = name
    @cooked = false
    @ingredients = []
  end

  def add_ingredient(new_ingredient)
    VALID_INGREDIENTS.each do |ingredient|
      @ingredients << ingredient if ingredient[:name] == new_ingredient
    end
  end

  def cooked?
    @cooked
  end

  def cook
    @cooked = true
  end

  def calories_counting
    count = 0
    @ingredients.each do |ingredient|
    count = count + ingredient[:calories]
    end
    return count
  end
end


mypizza = Pizza.new("Peperonni")
puts mypizza.name
mypizza.add_ingredient("cheese")
mypizza.add_ingredient("chocolate")
mypizza.add_ingredient("tomato sauce")
mypizza.add_ingredient("dough")
mypizza.add_ingredient("olives")


p mypizza.ingredients
p mypizza.cooked?
p mypizza.cook
puts mypizza.calories_counting
