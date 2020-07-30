def max_profit(prices)
    
    return 0 if prices.empty?
    
    buy_day = -1
    min_price_day = prices.index(prices.min)
    max_price_day = prices.index(prices.max)
    sze = prices.size - 1
    buy_day = min_price_day if min_price_day < sze
    sell_day = max_price_day 
    return prices[sell_day] - prices[buy_day] if buy_day > -1 && sell_day > buy_day  
    
    profits = [0]
    idx = 0
    while idx < sze
        buy_day = idx 
  
        sell_day = buy_day + prices[buy_day..sze].index(prices[buy_day..sze].max) if sell_day < buy_day
                
        profits << prices[sell_day] - prices[buy_day] if buy_day > -1 && sell_day > buy_day
        
        idx += 1
    end
        
    profits.max
end
