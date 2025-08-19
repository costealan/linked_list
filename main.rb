class LinkedList
  attr_accessor :head
  def initialize
    @head = nil
  end

  def append(value)
    node = Node.new(value, nil)
    if head == nil
      @head = node
    else
      last_node = find(head)
      last_node.next = node
    end  
  end

  def prepend(value)
  end

  def find(node)
    if node.next == nil
      return node
    end
    find(node.next)
  end
end

class Node
  attr_accessor :value, :next
  def initialize(value, next_node)
    @value = value
    @next = next_node
  end
end

linked_list = LinkedList.new()
linked_list.append(1)
linked_list.append(2)
linked_list.append(3)