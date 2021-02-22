#Create a simple tip calculator. The program should prompt
#for a bill amount and a tip rate. The program must compute the tip and 
#then display both the tip and the total amount of the bill.

#example
#What is the bill? 200
#What is the tip percentage? 15

#The tip is $30.0
#The total is $230.0

# input: integer (bill amount and a tip rate)
# output: integer (tip and total amount of the bill)
# rules:
#      Explicit requirements:
#        - prompt for a bill amount and tip rate
#        - compute the tip and display both tip and total amount of bill

#      Implicit requirements:
#        - the tip and total amount diplayed will be a float
#      
# Algorithm:
#  - ask the user for a bill amount and store answer in a variable
#  - ask the user for a tip rate and store answer in a variable
#  - compute the tip and store the answer in a tip variable
#  - initialize a total variable and store the tip + the total in it
#  - display the tip and total in a string using string interpolation.

puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip_percentage = gets.chomp.to_f

tip = (tip_percentage * 0.01) * bill
total = tip + bill

puts "The tip is $#{tip}"
puts "The total is $#{total}"
