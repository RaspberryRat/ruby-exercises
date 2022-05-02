# look at an array,
#find the lowest number in the array
#then find the highest number after the lowest number found
#subtract highest from lowest and save into variable
#then drop lowest price from array and find next min and repeat loop
#finally substract highest from lowest to return profit margin
require "pry-byebug"

def stock_picker(prices)
  i = 0
  price_index = []
  min_price_index = prices.index(prices.min)
  price_index.push(min_price_index)
  price_difference = prices.drop(min_price_index).max - prices[min_price_index]
  #binding.pry
  price_index.push(prices.index(prices.drop(min_price_index).max))
  p price_index
  
  puts price_difference
  price_array = Array.new(prices)
  while i < (price_array.length - 1) do
    price_array.delete(price_array.min)
    min_price_index = price_array.index(price_array.min)
    price_difference_looped = price_array.drop(min_price_index).max - price_array.min
    if (price_difference_looped > price_difference)
      price_index = []
      price_index.push(prices.index {|num| num == price_array[min_price_index]})
      price_index.push(prices.index {|num| num == prices.drop(min_price_index).max})
      #binding.pry
      price_difference = price_difference_looped
      p "Price index in loop = #{price_index}"
    end
    i += 1
    p
  end
    puts price_index
    puts price_difference_looped
    #puts "The best day to pick a stock is day #{prices.index({|n| n == price_index[0]})} "
end








stock_picker([17,3,6,9,15,8,6,1,10])

