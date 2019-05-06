require 'pry'

def my_select(collection)
  filtered_collection = []
  i = 0
  while i < collection.length
<<<<<<< HEAD
    filtered_collection << collection[i] if yield(collection[i])
=======
    filtered_collection << yield(collection[i])
>>>>>>> 1b7d6ec357d4266a88428365632e0378ad405c47
    i = i+1
  end
  filtered_collection
end

arr = [1,2,3,4,5]

my_select(arr) do |num|
  if num.even?
    num
<<<<<<< HEAD
=======
    binding.pry
>>>>>>> 1b7d6ec357d4266a88428365632e0378ad405c47
  end
end