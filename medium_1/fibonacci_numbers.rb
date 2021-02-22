def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last
end

def fibonacci_last(nth)
  fibonacci(nth).to_s[-1].to_i
end