# 1. Two Sum

# Given an array of integers, return indices of the two numbers such that they add up to a specific target.
# You may assume that each input would have exactly one solution, and you may not use the same element twice.

#Example:

#Given nums = [2, 7, 11, 15], target = 9,

#Because nums[0] + nums[1] = 2 + 7 = 9,
#return [0, 1].

def two_sum(nums, target)
    
    sze = nums.size
    
    current = 0
    idx = 0
    
    while current < sze do
        return [current, idx] if current != idx && (nums[current] + nums[idx]) == target
        idx += 1
        if idx == sze
            current +=1
            idx = current + 1
        end
    end
end
