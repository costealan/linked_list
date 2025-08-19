class LinkedList
  def initialize
    @head = nil
  end

  def append(value)
    node = Node.new(value, nil)
    if head == nil
      @head = node
    else
      last_node = find_last(head)
      last_node.next = node
    end  
  end

  def prepend(value)
    old_head = @head
    node = Node.new(value, old_head)
    @head = node
  end

  def size
    i = 1
    current = @head
    while current.next != nil
      i += 1
      current = current.next
    end
    i 
  end

  def head
    return @head
  end

  def find_last(node)
    if node.next == nil
      return node
    end
    find_last(node.next)
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
linked_list.prepend(4)
puts linked_list.size
puts linked_list.head