# Linked List

** Overview
This project implements a **linked list* in Ruby

It is part of The Odin Project Ruby curriculum

---

## Features
- **Node**: it has attributes for storing a value and next Node
- **Linked List**:
  - #appends new nodes to the end of the list
  - #prepends new node to the start of the list
  - #size returns the number of nodes in the list
  - #head returns the first node
  - #tail returns the last node
  - #at(index) returns the node at the given index
  - #pop removes las node
  - #contains?(value) checks if value exists
  - #find(value) returns index of the node which contains the value, if it does not exist it returns nil
  - #to_s retuns a string of the list like this: ( dog ) -> ( cat ) -> nil
  - #insert_at(value, index) inserts a new node at the given index
  - #remove_at(index) removes the node from that index

---

## Example 

it was coded with Ruby 3.4.2

```ruby
list = LinkedList.new

list.append('dog')
list.append('cat')
list.append('parrot')
list.append('hamster')
list.append('snake')
list.append('turtle')

puts list
# => ( dog ) -> ( cat ) -> ( parrot ) -> ( hamster ) -> ( snake ) -> ( turtle ) -> nil

list.prepend('orca')
puts list
# => ( orca ) -> ( dog ) -> ( cat ) -> ( parrot ) -> ( hamster ) -> ( snake ) -> ( turtle ) -> nil

puts list.size
# => 7

puts list.contains?('hamster')
# => true

list.insert_at('dolphin', 3)
puts list
# => ( orca ) -> ( dog ) -> ( cat ) -> ( dolphin ) -> ( parrot ) -> ( hamster ) -> ( snake ) -> ( turtle ) -> nil

list.remove_at(0)
puts list
# => ( dog ) -> ( cat ) -> ( dolphin ) -> ( parrot ) -> ( hamster ) -> ( snake ) -> ( turtle ) -> nil
```

---

## Credits
Project idea and assigment from [The Odin Project]([url](https://github.com/costealan/linked_list))
Code implementation by me
