def rotate_array(arr)
  rotated_array = []
  rotated_array << arr[1..-1]
  rotated_array << arr[0]
  rotated_array.flatten
end

def rotate_rightmost_digits(num1, num2)
  last_digits = num1.to_s.chars.last(num2).join.to_i
  new_num = num1 - last_digits
  rotated_num = rotate_array(last_digits.digits.reverse).join.to_i
  new_num + rotated_num
end

rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917