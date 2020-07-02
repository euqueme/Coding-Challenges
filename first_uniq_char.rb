def first_uniq_char(s)
    
    hash_count = Hash.new
    
    s.chars.each do |letter|
        hash_count[letter].nil? ? hash_count[letter] = 1 : hash_count[letter] += 1
    end
    
    result = -1
      
    hash_count.each { |k,v| return s.index(k) if v == 1 }
    
    result
    
end
