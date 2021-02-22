def compute_sum(number)
  total = 0
  1.upto(number) { |value| total += value }
  total
end

def compute_product(number)
  total = 1
  1.upto(number) { |value| total *= value }
  total
end

puts "Please enter an integer greater than 0:"
integer = gets.chomp.to_i

puts "Enter 's' to compute the sum. 'p' to compute the product."
action = gets.chomp

if action == 's'
  sum = compute_sum(integer)
  puts "The sum of integers between 1 and #{integer} is #{sum}."
elsif action == 'p'
  product = compute_product(integer)
  puts "The product of integers between 1 and #{integer} is #{product}."
else
  puts "Please enter 's' to compute the sum or 'p' to compute the product."
end