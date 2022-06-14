stock_prices = []
input = nil
puts "Please input a stock price followed by enter key for each day of the range you want to calculate:"
until input == 0
  input = gets.chomp.to_i
  stock_prices.push(input)
  if stock_prices.last == 0
    stock_prices.pop
  end
end
if input == 0
  if stock_prices == []
    stock_prices = [17,3,6,9,15,8,6,1,10]
  end
end
puts "stock prices by day #{stock_prices}"
def stock_picker(prices)
  trade = {purchase_day: 0, sell_day: 0, profit: 0}
  prices.each_with_index do |price, day|
    i = day + 1
    while i <= prices.length - 1
      value = prices[i] - price
      if (value > trade[:profit] )
        trade = {purchase_day: day + 1, sell_day: i + 1, profit: value}
      end
      i += 1
    end
  end
  if trade[:profit] == 0
    puts "No profitable purchase days in this range."
  else
    puts "Maximum profit of #{trade[:profit]} achieved with purchase on day #{trade[:purchase_day]} and sell on day #{trade[:sell_day]}"
  end
end

stock_picker(stock_prices)