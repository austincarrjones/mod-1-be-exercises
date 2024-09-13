require 'csv'
require './lib/animal_lover'
require './lib/magical_pet'

# CSV.foreach('./data/animal_lovers.csv', headers: true, header_converters: :symbol) do |row|
#   require 'pry'; binding.pry
# end

# CSV.foreach('./data/animal_lovers.csv', headers: true, header_converters: :symbol) do |row|
#   id = row[:id].to_i
#   first_name = row[:first_name]
#   last_name = row[:last_name]
#   age = row[:age].to_i
#   animal_lover = AnimalLover.new(id,first_name,last_name,age)

#   # require 'pry'; binding.pry

#   puts "#{animal_lover.full_name} has been created!"
# end


CSV.foreach('./data/magical_pets.csv', headers: true, header_converters: :symbol) do |row|
  id = row[:id].to_i
  name = row[:name]
  pet_owner_id = row[:pet_owner_id]
  magical_pet = MagicalPet.new(id,name,pet_owner_id)

  require 'pry'; binding.pry

  puts "#{magical_pet.name} has been created!"
end