def product_except_self(nums)
    sze = nums.size
    
    nums_clone = nums.clone
    
    if nums.count(0) == 1 
        nums_clone.delete(0) 
        all = nums_clone.inject(:*)
        output = Array.new(sze, 0)
        
        output[nums.index(0)] = all
        
        return output
        
    
    elsif nums.count(0) > 1
        
        return Array.new(sze, 0)
        
    end
        
  
    all = nums_clone.inject(:*)

    output = Array.new(sze, all)
    current = 0    
    
    
    
    while current < sze
        
        output[current] = (output[current] * nums[current] ** -1).to_i
        
        current += 1

    end
    
    output
end
