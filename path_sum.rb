# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @param {Integer} sum
# @return {Boolean}
def has_path_sum(root, sum)
    
    acc = 0
    
    return false if root.nil?
    
    check_sum(root, sum, acc)
    
end

def check_sum (current, sum, acc)
    
    return false if current.nil?
    
    acc += current.val  
     
    
    if acc == sum && current.left.nil? && current.right.nil? 
      return true 
    else 
      return check_sum(current.left, sum, acc)  || check_sum(current.right, sum, acc) 
    end
    
    false
end
