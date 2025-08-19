class LinkedList
  attr_accessor :head
  def initialize
    @head = nil
  end

  def append(value)
    node = Node.new(value, nil)
    if head == nil
      @head = node
      puts "add value #{value} as the head node"
    else
      # find node with nil as next
      # if next == nil return
      # find_node(node.next_node)
    end  
  end
end

class Node
  def initialize(value, next_node)
    @value = value
    @next = next_node
  end
end

linked_list = LinkedList.new()
linked_list.append(1)