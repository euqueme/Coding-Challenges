def climb_stairs(n)
    
    return 1 if n == 1
    
    steps = [1]*(n + 1)
    
    steps[1] = 1
    steps[2] = 2
    
    index = 3
    while index <= n
        steps[index] = steps[index - 1] + steps[index - 2]
        index += 1
    end
    
    steps[n]
    
    
end
