def fizzbuzz(num1, num2)
  fizzbuzz_str = ''

  (num1..num2).each do |num|
    if num % 3 == 0
      fizzbuzz_str += 'fizz' + ' '
    elsif num % 5 == 0
      fizzbuzz_str += 'Buzz' + ' '
    elsif num % 3 == 0 && num % 5 == 0
      fizzbuzz_str += 'FizzBuzz' + ''
    else
      fizzbuzz_str += num.to_s + ' '
    end
  end

  fizzbuzz_str
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz