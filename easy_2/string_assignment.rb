name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name

# Alice, Bob
#save_name points at the variable name
#name on line 3 is pass by value so the result is Alice, Bob

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# BOB, BOB
# save_name points at the variable name
#upcase! mutates name so it is pass by reference, changing the original object
#resulting in both name and save_name to be BOB