animals = {"dogs" => 3, "cats" => 5, "iguanas" => 2}
# 1. return the value of dogs
animals["dogs"]
# 2. add 3 parakeets
animals["parakeets"] = 3
# 3. increase the amount of cats by 2
animals["cats"] += 2

pet_names = ["Fela", "Spot", "Patch", "Willy"]
# 1. add “Claude” to the end of the array
pet_names << "Claude"
# 2. access the first name in the list
pet_names.first
# 3. access the last name in the list
pet_names.last
# 4. remove “Fela” from the list
pet_names.shift


numbers = [[1, 2, 3], [4, 5, 6]]
#numbers.count = 2 (2 sub arrays)
#numbers.first.count = 3
#numbers[1].count (same as above)
# how can I access the element 5
numbers[1][1]
numbers << [7,8,9]


food_feelings = [{:pizza => "tasty"}, {:calzone => "also tasty"}]
#hash methods also used like array above. food_feelings.count = 2
#what is food_feelings.first.count (it's 1)
#how can I access the element "also tasty"
food_feelings.first[:pizza]
#how can I change also tasty to super delicious
food_feelings.first[:pizza] = "super delicious"
