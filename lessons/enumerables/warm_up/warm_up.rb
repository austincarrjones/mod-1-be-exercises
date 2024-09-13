# 1. Using #each, add to the method below, such that it takes in an array of names, 
# and returns an array of all names upcased.

kardashians = ["kris", "kim", "kourtney", "khloe", "rob"]

def upcase_names(names)
  upcased_names = []
  names.each do |names|
  upcased_names << names.upcase
  end
  return upcased_names

end 

p upcase_names(kardashians)

# should return ["KRIS", "KIM", "KOURTNEY", "KHLOE", "ROB"]




# 2. Using #each, update the method below, such that it takes in an array of names,
# and returns a collection of the names that end in 'ie'

pets = ["Brutus", "Lucky", "Goldie", "Pepper", "Odie"]

def names_ending_in_ie(names)
  pets_ie = []
  names.each do |names|
    if names.include?("ie")
      pets_ie << names
    end
  end
  pets_ie

end 

p names_ending_in_ie(pets)

# should return an array of ["Goldie", "Odie"]


# 3. Using #each, update the method below, such that it takes in an array of integers,
# and returns the first number that is over 100 when squared. 

# nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

# def first_num_thats_square_is_above_100(nums)
#   over_100 = []
#   nums.each do |nums|
#     over_100 << number if number**2 > 100
#   end
#     over_100.first
  
# end 

# p first_num_thats_square_is_above_100(nums)

# should return the integer 11

# nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

# def first_num_thats_square_is_above_100(nums)
#   # over_100 = nil
#   nums.each do |number|
#     if number**2 > 100
#       return number
#       # over_100 = number
#       #break
#     end
#   end
#     # over_100
  
# end 

# p first_num_thats_square_is_above_100(nums)




# kardashians = ["kris", "kim", "kourtney", "khloe", "rob"]

# def upcase_names(names)
#   names.map do {|names| names.upcase}
# end 
# p upcase_names(kardashians)


pets = ["Brutus", "Lucky", "Goldie", "Pepper", "Odie"]

def names_ending_in_ie(names)
  names.find_all do |names|
    name.ends_with?("ie")
    end
  end
  pets_ie

end 

p names_ending_in_ie(pets)


def first_num_thats_square_is_above_100(nums)
  nums.find {|num| *num > 100}
  
end 

p first_num_thats_square_is_above_100(nums)