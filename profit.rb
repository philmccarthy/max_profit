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
  # your code goes here
  # min price set to first value
  # max profit = next value - first price
  # iterate thru the stock prices in order and track idx
  #   skip first element
  #   potential_profit = current value - min price
  #   if potential profit > max profit
  #     max profit = potential profit
  #   if current val < min price
  #     min price = current val
  # return max_profit
end


stock_prices_yesterday = [10, 7, 5, 8, 11, 9]
# stock_prices_yesterday = [15, 13, 9, 7, 6, 4]
puts get_max_profit(stock_prices_yesterday)

