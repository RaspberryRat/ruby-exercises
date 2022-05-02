#require "pry-byebug"

def stock_picker(prices)
  i = 0
  price_index = []
  min_price_index = prices.index(prices.min)
  price_index.push(min_price_index)
  price_difference = prices.drop(min_price_index).max - prices[min_price_index]
  price_index.push(prices.index(prices.drop(min_price_index).max))
  price_array = Array.new(prices)
  while i < (price_array.length - 1) do
    price_array.delete(price_array.min)
    min_price_index = price_array.index(price_array.min)
    price_difference_looped = price_array.drop(min_price_index).max - price_array.min
    #binding.pry
    if (price_difference_looped > price_difference)
      price_index = []
      #need to pick the last example of the numbers not the first
      price_index.push(prices.index {|num| num == price_array[min_price_index]})
      price_index.push(prices.rindex {|num| num == prices.drop(min_price_index).max})
    else
      price_difference_looped = price_difference
    end
      price_difference = price_difference_looped
    i += 1
  end
  puts price_index
    print " The best day to buy is Day #{price_index[0]} at $#{prices[price_index[0]]}.\n The best day to sell is Day #{price_index[1]} at $#{prices[price_index[1]]}.\n For a total profit of $#{price_difference_looped}.\n"
end

stock_picker([17,3,6,9,15,8,6,1,10])
stock_picker([3,15,14,13,10,3,3,4,5,4,3,9,11,2,15,1])
