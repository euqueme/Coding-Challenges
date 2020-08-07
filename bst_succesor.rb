class Node
  attr_reader :key
  attr_accessor :left, :right

  def initialize(data)
    @key = data
  end
end

def array_to_tree(array, i)
  return nil if i >= array.length || array[i] == 0

  node = Node.new(array[i])
  node.left = array_to_tree(array, 2*i+1)
  node.right = array_to_tree(array, 2*i+2)

  node
end

def find_in_order_successor(rootNode, inputNode)
  # your code goes here
  result = nil
  
  #puts result
  
  check_successor(result, rootNode, inputNode)
end

def check_successor(result, currentNode, inputNode)
  
  #p currentNode
  #puts "#{currentNode.key} <= #{result}"
  result = currentNode.key if currentNode.key > inputNode && (result.nil? || currentNode.key <= result)

  result = check_successor(result, currentNode.left, inputNode) unless currentNode.left.nil?
  result = check_successor(result, currentNode.right, inputNode) unless currentNode.right.nil?
  result
end

node = array_to_tree([20,9,25,5,12,11,14],0)
  
#p node

puts find_in_order_successor(node, 9)
            