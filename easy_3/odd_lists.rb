def oddities(array)
  every_other = []
  index = 0

  loop do
    break if index >= array.size
    every_other << array[index]
    index += 2
  end
  every_other
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []