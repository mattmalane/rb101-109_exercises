def double_consonants(str)
  doubled = ''

  str.chars.each do |char|
    if char =~ /[^[:punct:]|aeiouAEIOU| \t\r\n\f\v|0-9]/
      doubled += char * 2
    else
      doubled += char
    end
  end

  doubled
end

double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""