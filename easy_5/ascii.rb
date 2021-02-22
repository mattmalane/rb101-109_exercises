def ascii_value(str)
  value = 0
  str.chars.map do |char|
    value += char.ord
  end
  value
end

ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0