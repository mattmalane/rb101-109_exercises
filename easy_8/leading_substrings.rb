def leading_substrings(str)
  substrings = []
  str_arr = str.chars
  count = 1

  loop do
    substrings << str_arr.first(count)
    count += 1
    break if count > str.size
  end

  substrings.map { |subset| subset.inject(:+) }  
end

leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']