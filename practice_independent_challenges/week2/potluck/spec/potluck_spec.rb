require './practice_independent_challenges/week2/potluck/lib/potluck'
require './practice_independent_challenges/week2/potluck/lib/dish'
require 'pry'

describe Potluck do
  describe '#initialize' do
    it 'is a potluck' do
      potluck = Potluck.new("7-13-18")
      expect(potluck).to be_a Potluck
    end
    it 'can read the name' do
      potluck = Potluck.new("7-13-18")
      expect(potluck.date).to eq "7-13-18"
    end
    it 'dishes default to empty' do
      potluck = Potluck.new("7-13-18")
      expect(potluck.dishes).to eq []
    end
    it 'can read the category' do
      couscous_salad = Dish.new("Couscous Salad", :appetizer)
      cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
      potluck = Potluck.new("7-13-18")
      potluck.add_dish(couscous_salad)
      potluck.add_dish(cocktail_meatballs)
      expect(potluck.dishes).to eq [couscous_salad, cocktail_meatballs]
      expect(potluck.dishes.length).to eq 2
    end
    it 'can read the category' do
      potluck = Potluck.new("7-13-18")
      couscous_salad = Dish.new("Couscous Salad", :appetizer)
      summer_pizza = Dish.new("Summer Pizza", :appetizer)
      roast_pork = Dish.new("Roast Pork", :entre)
      cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
      candy_salad = Dish.new("Candy Salad", :dessert)
      potluck.add_dish(couscous_salad)
      potluck.add_dish(summer_pizza)
      potluck.add_dish(roast_pork)
      potluck.add_dish(candy_salad)
      potluck.add_dish(cocktail_meatballs)
      expect(potluck.get_all_from_category(:appetizer)).to eq [couscous_salad, summer_pizza]
      expect(potluck.get_all_from_category(:appetizer).first).to eq couscous_salad
      expect(potluck.get_all_from_category(:appetizer).first.name).to eq "Couscous Salad"
    end
  end
end