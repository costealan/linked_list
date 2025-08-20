class LinkedList
  def initialize
    @head = nil
  end

  def append(value)
    node = Node.new(value, nil)
    if head == nil
      @head = node
    else
      last_node = find_last
      last_node.next = node
    end  
  end

  def prepend(value)
    old_head = @head
    @head = Node.new(value, old_head)
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

  def tail
    find_last
  end

  def at(index)
    current = @head
    while index >= 1
      current = current.next
      index -= 1
    end
    current
  end

  def pop
    last_node = tail
    current = @head
    while current.next != last_node 
      current = current.next
    end
    current.next = nil
    last_node
  end

  def contains?(value)
    current = @head
    until current == nil
      if current.value == value
        return true
      else
        current = current.next
      end
    end
    false
  end

  def find(value)
    i = 0
    current = @head
    until current == nil
      if current.value == value
        return i
      end
      i += 1
      current = current.next
    end
    nil
  end

  def to_s
    current = @head
    string = ''
    until current == nil
      string << "( #{current.value} ) -> "
      current = current.next
    end
    string << "nil"
  end

  def find_last(node = @head)
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



list = LinkedList.new

list.append('dog')
list.append('cat')
list.append('parrot')
list.append('hamster')
list.append('snake')
list.append('turtle')

puts list

# linked_list = LinkedList.new
# linked_list.append(1)
# linked_list.append(2)
# linked_list.append(3)
# linked_list.prepend(4)
# linked_list.size
# puts "head is #{linked_list.head} #{linked_list.head.value}"
# puts "tail is #{linked_list.tail} #{linked_list.tail.value}"
# puts "at index 0 is #{linked_list.at(0)} #{linked_list.at(0).value}" 
# puts "at index 1 is #{linked_list.at(1)} #{linked_list.at(1).value}" 
# puts "at index 2 is #{linked_list.at(2)} #{linked_list.at(2).value}" 
# puts "at index 3 is #{linked_list.at(3)} #{linked_list.at(3).value}" 
# p linked_list.pop
# puts "tail is #{linked_list.tail} #{linked_list.tail.value}"
# p 'contains?',linked_list.contains?(5)
# p linked_list.find(4)
#puts linked_list
