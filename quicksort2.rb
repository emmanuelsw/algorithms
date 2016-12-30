# Implementation of quicksort algorithm in Ruby 2

def quicksort(array)
  return array if array.length <= 1

  pivot_index = (array.length / 2).to_i
  pivot_value = array[pivot_index]
  array.delete_at(pivot_index)

  less = Array.new
  greater = Array.new

  array.each do |x|
    if x <= pivot_value
      less << x
    else
      greater << x
    end
  end

  return quicksort(less) + [pivot_value] + quicksort(greater)
end

names = File.readlines("randomnames.txt")
sorted_names = quicksort(names)
p sorted_names
