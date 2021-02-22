def swap_name(str)
  str.split[1] + ', ' + str.split[0]
end

swap_name('Joe Roberts') == 'Roberts, Joe'