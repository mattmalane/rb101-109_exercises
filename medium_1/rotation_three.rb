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

def max_rotation(num)
  rotated_num = [num]
  rotate = num.to_s.size
  
  loop do
    rotated_num << rotate_rightmost_digits(rotated_num[-1], rotate)
    rotate -= 1
    break if rotate < 2
  end

  rotated_num.last
end

max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845