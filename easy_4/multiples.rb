def multisum(num)
  multiples = (1..num).select do |int|
                int % 3 == 0 || int % 5 == 0
              end
  multiples.inject(:+)
end

multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168