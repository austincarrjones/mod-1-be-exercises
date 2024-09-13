require './practice_independent_challenges/week2/potluck/lib/potluck'
require './practice_independent_challenges/week2/potluck/lib/dish'

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
  end
end