# Definition for a Node.
# class Node
#     attr_accessor :val, :neighbors
#     def initialize(val = 0, neighbors = nil)
#		  @val = val
#		  neighbors = [] if neighbors.nil?
#         @neighbors = neighbors
#     end
# end

# @param {Node} node
# @return {Node}
def cloneGraph(node)
    
    result = Node.new(1)
    
    
    return [] if node.nil?
    return [[]] if node.neighbors.nil?
    
    add_neighbors(node, result)
    p node
    p result
    result
    
end

def add_neighbors(node, result)
    
    i = 0
    while i < node.neighbors.size
        result.neighbors << Node.new(node.neighbors[i].val)
        i += 1
    end
    #p result.neighbors
    
    i = 0
    while i < node.neighbors.size
        add_neighbors(node.neighbors[i], result.neighbors[i]) if node.neighbors[i].val - node.val == 1
        i += 1
    end
    
    #result

end
