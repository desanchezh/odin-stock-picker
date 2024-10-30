def stock_picker(price_array)
  profit = 0
  best_days = []
  price_array.each_with_index do |current_price, current_index| 
     potential_buy_price = price_array[current_index]
     prices_after_index = price_array.last(price_array.size - current_index)
     prices_after_index.each do |potential_sell_price|
      if profit < potential_sell_price - potential_buy_price
        profit = potential_sell_price - potential_buy_price
        best_days = []
        best_days.push(price_array.index(potential_buy_price), price_array.index(potential_sell_price))
      end
    end
  end
  puts "For a profit of #{profit}"
  best_days
end
 
number_array = [17,3,6,9,15,8,6,1,10]
p stock_picker(number_array)





