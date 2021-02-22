def halvsies(arr)
  first_arr = []
  second_arr = []
  
  if arr.size % 2 == 0
    first_arr += arr.first(arr.size / 2)
    second_arr += arr.last(arr.size / 2)
  else
    first_arr += arr.first(arr.size / 2 + 1)
    second_arr += arr.last(arr.size / 2)
  end

  [first_arr, second_arr]
end

halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]

