#Build a program that asks a user for the length and 
#width of a room in meters and then displays the area 
#of the room in both square meters and square feet.
#Note: 1 square meter == 10.7639 square feet
#Do not worry about validating the input at this time.

#example run:
#Enter the length of the room in meters:
#10
#Enter the width of the room in meters:
#7
#The area of the room is 70.0 square meters (753.47 square feet).

# input: integer (length and width of a room)
# output: integer (area of the room in square meters and square feet)
# rules:
#      Explicit requirements:
#        - asks a user for the length of a room in meters
#        - asks a user for the width of a room in meters
#        - Displays the area of the room in square meters and square feet
#        - Do not worry about validating the input
#
#      Implicit requirements:
#        - store the users answer in a variable
# 
# Algorithm:
#  - Ask a user for the length of a room in meters and store the result
#    in a variable
#  - Ask a user for the width of a room in meters and store the result
#    in a variable
#  - initialize an area variable that equals the product of the length and
#    width variables in square meters
#  - multiply the area by 10.7639 to get the square footage
#  - display the area in meters and feet 

puts "Enter the length of the room in meters:"
length = gets.chomp.to_i

puts "Enter the width of the room in meters:"
width = gets.chomp.to_i

area_in_meters = length * width
area_in_feet = area_in_meters * 10.7639

puts "The area of the room is #{area_in_meters} square meters (#{area_in_feet} square feet)."


