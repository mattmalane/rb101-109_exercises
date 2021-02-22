#Build a program that randomly generates and prints Teddy's age.
#To get the age, you should generate a random number between 20 and 200.
#example output => Teddy is 69 years old!

# input: randomly generated
# output: a string (Teddy is #{random number} years old!)
# rules:
#      Explicit requirements:
#        - program randomly generates and printes teddy's age
#        - generate a random number between 20 and 200.
#
#      Implicit requirements:
#        - the returned string should be "Teddy is #{} years old!"
#
# Algorithm:
#   - initialize an age variable to a random number between 20 and 200.
#   - print the string "Teddy is #{age} years old!"

age = rand(20..200)
puts "Teddy is #{age} years old!"