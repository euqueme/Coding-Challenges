def hasCycle(head)
    
    current = head
    node_hash = Hash.new
    
   until current.nil?
       
       if node_hash[current.val].nil?  
           node_hash[current.val] = [current] 
       elsif node_hash[current.val].include?(current)
           return true
       else
           node_hash[current.val] << current 
       end
       
       current = current.next
       
   end
    
    false
    
end
