# stock-picker  

App that takes a set of stock prices representing hypothetical days and returns the best day to buy and then sell.  

## finished  

-Had some trouble with nil values turning up in my loop because of wrong iteration count, caused NoMethodError unexpectedly  
-Developed a much stronger understanding of loops and how to think about faster ways to get answer to this kind of question  
-Unsure of best way to clearly prompt user for a range of stock prices like this case. ie Enter one at a time like this implementation, or ask for a range separated by commas or spaces and then split into an array inside the program?  

## plan  

-take a set of stock prices as an array with each price representing a hypothetical day's closing price  
-iterate through the array and compare to subsequent entries and save the highest price difference to a variable outside the loop  
-return the set with greatest profit margin or advise to not buy if the price goes down every single day  

## progress  

-put in the user message for non profitable price ranges and message for buy and sell days
-tried to compare two separate arrays but decided against it and going to compare each pair within the one given array
-save current purchase, sell, and profit into one hash object
-iterate through stock price array and compare to all subsequent days with current iteration as purchase date and compare each pair with profit of hash object
-return the highest profit pair in the given stock price range