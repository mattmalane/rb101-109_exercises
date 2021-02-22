def letter_percentages(str)
  percentages = { lowercase: 0, uppercase: 0, neither: 0}
  
  percentages[:lowercase] = str.chars.count { |char| char =~ /[a-z]/ }
  percentages[:uppercase] = str.chars.count { |char| char =~ /[A-Z]/ }
  percentages[:neither] = (str.size) - percentages[:lowercase] -
                                       percentages[:uppercase]
  percentages.each do |key, num|
    percentages[key] = find_percentage(num, str)
  end
end

def find_percentage(num, str)
  ((num.to_f / str.size.to_f) * 100).round(1)
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }