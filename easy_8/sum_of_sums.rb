def sum_of_sums(arr)
  sum_arr = []
  index = 1

  loop do
    sum_arr << arr.first(index)
    index += 1
    break if index > arr.size
  end

  sum_arr.map do |arr|
    arr.inject(:+)
  end.inject(:+)
end

sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35