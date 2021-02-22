array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

#the objects in array1 are being passed into array2
#array 1 is then being muated by upcase!
#the objects in array2 are referencing the objects in array1
#resulting in array2 showing CURLY, SHEMP AND CHICO