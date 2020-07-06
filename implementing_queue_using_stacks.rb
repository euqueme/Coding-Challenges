class ListNode
    attr_accessor :val, :next_node
    def initialize (val = nil, next_node = nil)
        @val = val
        @next_code = next_node
    end
end

class MyQueue

=begin
    Initialize your data structure here.
=end
    
    attr_accessor :head
        
    def initialize()
        @head = nil
    end


=begin
    Push element x to the back of queue.
    :type x: Integer
    :rtype: Void
=end
    def push(x)
        
        node = ListNode.new(x)
        
        if @head.nil?
            @head = node
        else
            current = @head
            
            until current.next_node.nil?
                current = current.next_node
            end
            
            current.next_node = node
        end
    end


=begin
    Removes the element from in front of queue and returns that element.
    :rtype: Integer
=end
    def pop()
        
        return nil if @head.nil?
        
        result = @head
        
        @head.next_node.nil? ? @head = nil : @head = @head.next_node 
        
        result.val
    end


=begin
    Get the front element.
    :rtype: Integer
=end
    def peek()
       @head.nil? ? nil : @head.val
    end


=begin
    Returns whether the queue is empty.
    :rtype: Boolean
=end
    def empty()
        return true if @head.nil?
        false
    end


end

# Your MyQueue object will be instantiated and called as such:
# obj = MyQueue.new()
# obj.push(x)
# param_2 = obj.pop()
# param_3 = obj.peek()
# param_4 = obj.empty()
