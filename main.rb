class LinkedList
  attr_accessor :head
  def initialize
    @head = nil
  end

  def append(value)
    if head == nil
      node = Node.new(value, nil)
      @head = node
      puts "add value #{value} as the head node"
    else
      # code for adding new nodes beside head
    end  
  end
end

class Node
  def initialize(value, next_node)
    @value = value
    @next_node = next_node
  end
end

linked_list = LinkedList.new()
linked_list.append(1)