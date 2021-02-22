def uppercase?(str)
  if str.chars.any? {|char| char =~ /[a-z]/ } == false
    true
  else
    false
  end
end

uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true