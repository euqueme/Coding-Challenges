def search(nums, target)
  #result = nums.index(target)
  #result.nil? ? -1 : result 
    
    result = -1
    
    index = 0
    
    while index < nums.size
        return index if nums[index] == target
        index += 1
    end
    
    result
end
