#Write a program that will ask for user's name. The program will then 
#greet the user. If the user writes "name!" then the 
#computer yells back to the user.

# **Problem**
# - ask for user's name
# - program greets the user
# - if user writes 'name!'
#   - yell back to the user
# Explcit
#   - ask for name, greet user
#   -yell back at user if user's name ends with !
# Implicit
#   -

puts "What is your name?"
name = gets.chomp

if name[-1] == '!'
  name = name.chop
  puts "HELLO #{name.upcase}, WHY ARE WE SCREAMING!"
else
  puts "Hello #{name}."
end





