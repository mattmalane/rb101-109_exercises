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

def palindromes(str)
  substrings(str).select do |word|
    word == word.reverse if word.size > 1
  end
end

palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]