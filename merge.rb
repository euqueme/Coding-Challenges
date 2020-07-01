def merge(intervals)
    
    return intervals if intervals.size == 1
    
    index = 0
    
    intervals.sort!
    
    while index < intervals.size - 1
        if intervals[index][1] >= intervals[index + 1][0]
            intervals[index] = [[intervals[index][0], intervals[index + 1][0]].min,[intervals[index][1], intervals[index + 1][1]].max]
            intervals.delete_at(index + 1)
        else
            index += 1 
        end

    end
    intervals
    
end
