def repeater(str)
  doubled = []
  str.chars.each { |char| doubled << char * 2 }
  doubled.join
end


repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''