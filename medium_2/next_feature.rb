def featured(num)
  counter = num
  counter += 1

  loop do
    if counter.even?
      counter += 1
      next
    elsif counter % 7 == 0 && counter.digits == counter.digits.uniq
      return counter
      break
    end
    counter += 2
    break if counter >= 9_876_543_210
  end

  'There is no possible number that fulfills those requirements'
end