#Print all odd numbers from 1 to 99, inclusive, 
#to the console, with each number on a separate line.

counter = 1
 while counter <= 99
  puts counter if counter.odd?
  counter += 1
 end
