puts "Please write word or multiple words:"
string = gets.chomp

string_count = 0
string_count += string.split.join.count(string)

puts "There are #{string_count} characters in '#{string}'."
