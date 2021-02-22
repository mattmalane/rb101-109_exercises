def crunch(string)
  index = 0
  crunch_text = ''
  loop do
    break if index > string.length
    crunch_text << string[index] if string[index] != string[index + 1]
    index += 1
  end
  crunch_text
end


crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''