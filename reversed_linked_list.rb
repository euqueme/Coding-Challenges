def reverse_list(head)
    
    current = head
    prev = nil
    
    
    until current.nil?
        nex_aux = current.next
        current.next = prev
        prev = current
        current = nex_aux
        
    end
    
    prev
    
end
