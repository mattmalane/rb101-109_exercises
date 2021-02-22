def sum_square_difference(num)
  square_of_sums = (1.upto(num).inject(:+))**2
  sum_of_squares = 1.upto(num).map {|num| num**2 }.inject(:+)

  square_of_sums - sum_of_squares
end

sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
sum_square_difference(10) == 2640
sum_square_difference(1) == 0
sum_square_difference(100) == 25164150