def balanced?(str)
  parentheses = str.chars.select { |char| char =~ /[()]/ }
  
  if parentheses.first == ')' ||
     parentheses.size.odd? ||
     parentheses.last == '('
    return false
  elsif parentheses.first == '(' && parentheses.size.even?
    return true
  else
    return true
  end
end

balanced?('What (is) this?') == true
balanced?('What is) this?') == false
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true
balanced?('((What)) (is this))?') == false
balanced?('Hey!') == true
balanced?(')Hey!(') == false
balanced?('What ((is))) up(') == false
