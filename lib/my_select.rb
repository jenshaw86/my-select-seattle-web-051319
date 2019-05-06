require 'pry'

def my_select(collection)
  filtered_collection = []
  i = 0
  while i < collection.length
    filtered_collection << collection[i] if yield(collection[i])
    i = i+1
  end
  filtered_collection
end

arr = [1,2,3,4,5]

my_select(arr) do |num|
  if num.even?
    num
  end
end