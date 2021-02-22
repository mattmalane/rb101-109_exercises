def center_of(str)
  if str.length.odd?
    str[str.length / 2]
  elsif str.length.even?
    str[(str.length / 2 - 1)..(str.length / 2)]
  end
end

center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'