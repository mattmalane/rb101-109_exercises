def letter_case_count(str)
  hsh = { lowercase: 0, uppercase: 0, neither: 0 }

  str.chars.each do |char|
    if ('a'..'z').to_a.include?(char)
      hsh[:lowercase] += 1
    elsif ('A'..'Z').to_a.include?(char)
      hsh[:uppercase] += 1
    else
      hsh[:neither] += 1
    end
  end

  hsh
end

letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }