def interleave(arr1, arr2)
  new_arr = []
  new_arr_size = 0

  loop do
    new_arr << arr1[new_arr_size]
    new_arr << arr2[new_arr_size]
    new_arr_size += 1
    break if new_arr_size >= arr1.size
  end
  
  new_arr
end


interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']