def double_number?(num)
  n = num.to_s.size / 2
  num_arr = num.to_s.chars
  num_arr.first(n) == num_arr.last(n)
end

def twice(num)
  if num.to_s.size.odd?
    num * 2
  elsif double_number?(num)
    num
  else
    num * 2
  end
end

twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10