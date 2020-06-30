def top_k_frequent(nums, k)
    
    uniq_count = Hash.new
    output = []
    
    nums.each do |number| 
        uniq_count[number].nil? ? uniq_count[number] = 1 : uniq_count[number] += 1 
    end
    
    sorted_hash = uniq_count.sort{|k,v| v[1]<=>k[1]}
    
    k.times do |index| 
        output << sorted_hash[index][0]
    end
    
    output

end
