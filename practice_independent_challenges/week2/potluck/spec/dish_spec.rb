require './practice_independent_challenges/week2/potluck/lib/dish'

describe Dish do
  describe '#initialize' do
    it 'is a dish' do
      dish = Dish.new("Couscous Salad", :appetizer)
      expect(dish).to be_a Dish
    end
    it 'can read the name' do
      dish = Dish.new("Couscous Salad", :appetizer)
      expect(dish.name).to eq "Couscous Salad"
    end
    it 'can read the category' do
      dish = Dish.new("Couscous Salad", :appetizer)
      expect(dish.category).to eq :appetizer
    end
  end
end