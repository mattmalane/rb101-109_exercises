def buy_fruit(arr)
  fruit_list = []

  arr.each do |subarr|
    subarr[1].times do
      fruit_list << subarr[0]
    end
  end

  fruit_list
end

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]