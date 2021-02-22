puts "How old are you?"
user_age = gets.chomp.to_i

puts "At what age would you like to retire?"
desired_age = gets.chomp.to_i

current_year = 2021

retirement_year = (desired_age - user_age) + current_year
years_untill_retirement = retirement_year - current_year

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You have only #{years_untill_retirement} years of work to go!"