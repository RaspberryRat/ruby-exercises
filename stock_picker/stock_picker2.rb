#refactoring code to improve with ruby enumerables
def stock_picker(prices)
  min_price = prices[0]
  min_ind = 0
  profit = 0
  days = [0,0]
  sell_price = 0
  buy_price = 0

  prices.each_with_index do |price, ind|
    if price < min_price
      min_price = price
      min_ind = ind
      next
    end

    if price - min_price > profit
      profit = price - min_price
      days = [min_ind, ind]
      buy_price = min_price
      sell_price = price
    end
  end
  puts "\nThe best day to buy is Day #{days[0]} for $#{buy_price}.\nThe best day to sell is Day #{days[1]} for $#{sell_price}.\n"\
  "You'll get a profit of #{profit}."
end

stock_picker([17,3,6,9,15,8,6,1,10])
stock_picker([3,15,14,13,10,3,3,4,5,4,3,9,11,2,15,1])
