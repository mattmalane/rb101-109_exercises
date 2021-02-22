def triangle(n)
  counter = n
  stars = 1

  loop do
    puts (' ' * (counter - 1)) + ('*' * stars)
    stars += 1
    counter -= 1
    break if counter == 0
  end
end

