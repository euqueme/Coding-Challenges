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
# @return {Integer}
@final = 0
def max_depth(root)
    @final = 0
    return 0 if root.nil?    
    acc = 0
    dfs(root, acc)
    
end



def dfs(root, acc)
        
    unless root.nil?
       acc += 1 
        
       dfs(root.left,acc)
       dfs(root.right,acc)
       @final = [acc,@final].max
    end

    @final
end
