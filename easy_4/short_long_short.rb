def short_long_short(str1, str2)
  arr = [str1, str2]
  arr2 = arr.sort_by do |str|
          str.size
         end
  arr2[0] + arr2[1] + arr2[0]
end


short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"