# based on a series of stock prices I've saved from yesterday,
# write some code that could tell me the best profit possible
# if I had bought and sold stock during the day.
# for example, given the stock prices below, the function should
# return 6 (buying for $5 and selling for $11, making a $6 profit)

# stock_prices_yesterday = [10, 7, 5, 8, 11, 9]

# part two: what if the stock only goes down all day? at what
# price should I have bought the stock to lose the least amount
# of money?

# stock_prices_yesterday = [15, 13, 9, 7, 6, 4]

# in this case, return -1  (bought at 7, sold at 6)

def get_max_profit(stock_prices_yesterday)
  min_price = stock_prices_yesterday.first
  max_profit = stock_prices_yesterday[1] - min_price
  stock_prices_yesterday.each.with_index do |price, idx|
    next if idx == 0
    potential_profit = price - min_price
    max_profit = potential_profit if potential_profit > max_profit
    min_price = price if price < min_price
  end
  max_profit
end


stock_prices_yesterday = [10, 7, 5, 8, 11, 9]
# stock_prices_yesterday = [15, 13, 9, 7, 6, 4]
puts get_max_profit(stock_prices_yesterday)

