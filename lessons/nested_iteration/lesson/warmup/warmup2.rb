# Part Two
# Given the following array:
nested_animals = [[:dog, :cat, :zebra], [:quokka, :unicorn, :bear]]

# Use an enumerable to:
# 1. Return an unnested (single layer) array of animals as strings

#clever way
flattened_animals = nested_animals.flatten.map do |animals|
  animals.to_s
end

#OR
#longhand

animal_strings = []

nested_animals.each do |animals|
  animals.each do |animal|
    animal.to_s
    animal_strings << animal.to_s
  end
end

require 'pry'; binding.pry



# 2. Return an unnested array of animals with length >= 4



# 3. Return a hash where the keys are the animal, and the values are the length. ex: {dog: 3, cat: 3, zebra: 5 ... }
