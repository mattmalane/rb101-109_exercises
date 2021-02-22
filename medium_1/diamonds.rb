def diamond(n)
  spaces = n / 2
  asterisk = 1

  loop do
    puts "#{(' ' * spaces) + ('*' * asterisk) + (' ' * spaces)}"
    spaces -= 1
    asterisk += 2

    if asterisk > n
      loop do
        asterisk -= 4 if asterisk > n
        spaces += 2 if spaces == -1
        puts "#{(' ' * spaces) + ('*' * asterisk) + (' ' * spaces)}"

        asterisk -= 2
        spaces += 1
        break if asterisk < 1
      end
    end
  end
end

diamond(1)
diamond(3)
diamond(9)