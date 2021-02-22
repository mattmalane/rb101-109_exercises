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

def substrings(str)
  index = 0
  all_substrings = []
  
  loop do
    all_substrings << leading_substrings(str[index..-1])
    index += 1
    break if index == str.size
  end

  all_substrings.flatten
end

substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]