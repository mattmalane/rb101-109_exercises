def staggered_case(str)
  staggered_str = []
  index = 0

  loop do
    if str.chars[index] =~ /[a-zA-Z]/ && index.even?
      staggered_str << str.chars[index].upcase
    elsif str.chars[index] =~ /[a-zA-Z]/ && index.odd?
      staggered_str << str.chars[index].downcase
    else
      staggered_str << str.chars[index]
    end

    index += 1
    break if index > str.size
  end
  
  staggered_str.join
end

staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'