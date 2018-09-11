##Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day.
 # It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

 def stock_picker(arr)

  max_profit = 0 

  days = []

  arr.each.with_index do |num1, idx1|
    arr.each.with_index do |num2, idx2|
      if idx1 < idx2 && (num2 - num1) > max_profit
        max_profit = num2 - num1
        days = [idx1, idx2]
      end
    end
  end

  # return most profitable days 
  days 
  
 end
