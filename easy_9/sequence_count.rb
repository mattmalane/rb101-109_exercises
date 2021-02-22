def sequence(num1, num2)
  sequence = []
  
  loop do
    if num1 == 0
      sequence
    elsif sequence.empty?
      sequence << num2
    elsif sequence.size > 0
      sequence << sequence.last + num2
    end

    break if sequence.size == num1
  end

  sequence
end

sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []