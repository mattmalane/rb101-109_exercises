def print_in_box(str)
  horizontal_line = "+#{'-' * (str.size + 2)}+"
  empty_line = "|#{' ' * (str.size + 2)}|"

  puts horizontal_rule
  puts empty_line
  puts "| #{message} |"
  puts empty_line
  puts horizontal_rule
end